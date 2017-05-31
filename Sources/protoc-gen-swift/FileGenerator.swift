// Sources/protoc-gen-swift/FileGenerator.swift - File-level generation logic
//
// Copyright (c) 2014 - 2016 Apple Inc. and the project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See LICENSE.txt for license information:
// https://github.com/apple/swift-protobuf/blob/master/LICENSE.txt
//
// -----------------------------------------------------------------------------
///
/// This provides the logic for each file that is stored in the plugin request.
/// In particular, generateOutputFile() actually builds a Swift source file
/// to represent a single .proto input.  Note that requests typically contain
/// a number of proto files that are not to be generated.
///
// -----------------------------------------------------------------------------
import Foundation
import PluginLibrary
import SwiftProtobuf


class FileGenerator {
    private let fileDescriptor: FileDescriptor
    private let generatorOptions: GeneratorOptions
    private let namer: SwiftProtobufNamer

    var outputFilename: String {
        let ext = ".pb.swift"
        let pathParts = splitPath(pathname: fileDescriptor.name)
        switch generatorOptions.outputNaming {
        case .FullPath:
            return pathParts.dir + pathParts.base + ext
        case .PathToUnderscores:
            let dirWithUnderscores =
                pathParts.dir.replacingOccurrences(of: "/", with: "_")
            return dirWithUnderscores + pathParts.base + ext
        case .DropPath:
            return pathParts.base + ext
        }
    }

    init(fileDescriptor: FileDescriptor,
         generatorOptions: GeneratorOptions) {
        self.fileDescriptor = fileDescriptor
        self.generatorOptions = generatorOptions
        namer = SwiftProtobufNamer(currentFile: fileDescriptor,
                                   protoFileToModuleMappings: generatorOptions.protoToModuleMappings)
    }

    func generateOutputFile(printer p: inout CodePrinter) {
        p.print(
            "// DO NOT EDIT.\n",
            "//\n",
            "// Generated by the Swift generator plugin for the protocol buffer compiler.\n",
            "// Source: \(fileDescriptor.name)\n",
            "//\n",
            "// For information on using the generated types, please see the documenation:\n",
            "//   https://github.com/apple/swift-protobuf/\n",
            "\n")

        // Attempt to bring over the comments at the top of the .proto file as
        // they likely contain copyrights/preamble/etc.
        //
        // The C++ FileDescriptor::GetSourceLocation(), says the location for
        // the file is an empty path. That never seems to have comments on it.
        // https://github.com/google/protobuf/issues/2249 opened to figure out
        // the right way to do this since the syntax entry is optional.
        let syntaxPath = [Google_Protobuf_FileDescriptorProto.FieldNumbers.syntax]
        if let syntaxLocation = fileDescriptor.sourceCodeInfoLocation(path: syntaxPath) {
          let comments = syntaxLocation.asSourceComment(commentPrefix: "///",
                                                        leadingDetachedPrefix: "//")
          if !comments.isEmpty {
              p.print(comments)
              // If the was a leading or tailing comment it won't have a blank
              // line, after it, so ensure there is one.
              if !comments.hasSuffix("\n\n") {
                  p.print("\n")
              }
          }
        }

        p.print("import Foundation\n")
        if !fileDescriptor.isBundledProto {
            // The well known types ship with the runtime, everything else needs
            // to import the runtime.
            p.print("import SwiftProtobuf\n")
        }
        if let neededImports = generatorOptions.protoToModuleMappings.neededModules(forFile: fileDescriptor) {
            p.print("\n")
            for i in neededImports {
                p.print("import \(i)\n")
            }
        }

        p.print("\n")
        generateVersionCheck(printer: &p)

        let enums = fileDescriptor.enums.map {
            return EnumGenerator(descriptor: $0, generatorOptions: generatorOptions, namer: namer)
        }

        var messages = [MessageGenerator]()
        for m in fileDescriptor.messages {
          messages.append(MessageGenerator(descriptor: m, generatorOptions: generatorOptions, namer: namer))
        }

        var extensions = [ExtensionGenerator]()
        for e in fileDescriptor.extensions {
            extensions.append(ExtensionGenerator(descriptor: e, generatorOptions: generatorOptions, namer: namer))
        }

        for e in enums {
            e.generateMainEnum(printer: &p)
        }

        for m in messages {
            m.generateMainStruct(printer: &p, parent: nil)
        }

        let extensionSet = ExtensionGenerator.ExtensionSet(
          fileDescriptor: fileDescriptor,
          generatorOptions: generatorOptions,
          namer: namer)
        extensionSet.register(extensions: extensions)
        for m in messages {
            m.registerExtensions(set: extensionSet)
        }
        if !extensionSet.isEmpty {
            let pathParts = splitPath(pathname: fileDescriptor.name)
            let filename = pathParts.base + pathParts.suffix
            p.print(
                "\n",
                "// MARK: - Extension support defined in \(filename).\n")

            // Generate the Swift Extensions on the Messages that provide the api
            // for using the protobuf extension.
            extensionSet.generateMessageSwiftExtensions(printer: &p)

            // Generate a registry for the file.
            extensionSet.generateFileProtobufExtensionRegistry(printer: &p)

            // Generate the Extension's declarations (used by the two above things).
            //
            // This is done after the other two as the only time developers will need
            // these symbols is if they are manually building their own ExtensionMap;
            // so the others are assumed more interesting.
            //
            // This is not done via the ExtensionSet because for Message scoped
            // extensions, they are done in a Swift Extension on the Message's
            // type.
            for e in extensions {
                p.print("\n")
                e.generateProtobufExtensionDeclarations(printer: &p)
            }
            for m in messages {
                m.generateProtobufExtensionDeclarations(printer: &p)
            }
        }

        let protoPackage = fileDescriptor.package
        let needsProtoPackage: Bool = !protoPackage.isEmpty && !messages.isEmpty
        if needsProtoPackage || !enums.isEmpty || !messages.isEmpty {
            p.print(
                "\n",
                "// MARK: - Code below here is support for the SwiftProtobuf runtime.\n")
            if needsProtoPackage {
                p.print(
                    "\n",
                    "fileprivate let _protobuf_package = \"\(protoPackage)\"\n")
            }
            for e in enums {
                e.generateRuntimeSupport(printer: &p)
            }
            for m in messages {
                m.generateRuntimeSupport(printer: &p, file: self, parent: nil)
            }
        }
    }

    private func generateVersionCheck(printer p: inout CodePrinter) {
        let v = Version.compatibilityVersion
        p.print(
            "// If the compiler emits an error on this type, it is because this file\n",
            "// was generated by a version of the `protoc` Swift plug-in that is\n",
            "// incompatible with the version of SwiftProtobuf to which you are linking.\n",
            "// Please ensure that your are building against the same version of the API\n",
            "// that was used to generate this file.\n",
            "fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {\n")
        p.indent()
        p.print(
            "struct _\(v): SwiftProtobuf.ProtobufAPIVersion_\(v) {}\n",
            "typealias Version = _\(v)\n")
        p.outdent()
        p.print("}\n")
    }
}
