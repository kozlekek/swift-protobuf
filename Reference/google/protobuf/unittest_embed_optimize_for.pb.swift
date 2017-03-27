/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/unittest_embed_optimize_for.proto
 *
 */

//  Protocol Buffers - Google's data interchange format
//  Copyright 2008 Google Inc.  All rights reserved.
//  https://developers.google.com/protocol-buffers/
// 
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are
//  met:
// 
//      * Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//      * Redistributions in binary form must reproduce the above
//  copyright notice, this list of conditions and the following disclaimer
//  in the documentation and/or other materials provided with the
//  distribution.
//      * Neither the name of Google Inc. nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
// 
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

//  Author: kenton@google.com (Kenton Varda)
//   Based on original Protocol Buffers design by
//   Sanjay Ghemawat, Jeff Dean, and others.
// 
//  A proto file which imports a proto file that uses optimize_for = CODE_SIZE.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _1: SwiftProtobuf.ProtobufAPIVersion_1 {}
  typealias Version = _1
}

fileprivate let _protobuf_package = "protobuf_unittest"

struct ProtobufUnittest_TestEmbedOptimizedForSize: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TestEmbedOptimizedForSize"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "optional_message"),
    2: .standard(proto: "repeated_message"),
  ]

  private class _StorageClass {
    var _optionalMessage: ProtobufUnittest_TestOptimizedForSize? = nil
    var _repeatedMessage: [ProtobufUnittest_TestOptimizedForSize] = []

    init() {}

    init(storage source: _StorageClass) {
      _optionalMessage = source._optionalMessage
      _repeatedMessage = source._repeatedMessage
    }
  }

  private var _storage = _StorageClass()

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(storage: _storage)
    }
    return _storage
  }

  ///   Test that embedding a message which has optimize_for = CODE_SIZE into
  ///   one optimized for speed works.
  var optionalMessage: ProtobufUnittest_TestOptimizedForSize {
    get {return _storage._optionalMessage ?? ProtobufUnittest_TestOptimizedForSize()}
    set {_uniqueStorage()._optionalMessage = newValue}
  }
  var hasOptionalMessage: Bool {
    return _storage._optionalMessage != nil
  }
  mutating func clearOptionalMessage() {
    return _storage._optionalMessage = nil
  }

  var repeatedMessage: [ProtobufUnittest_TestOptimizedForSize] {
    get {return _storage._repeatedMessage}
    set {_uniqueStorage()._repeatedMessage = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  public var isInitialized: Bool {
    return withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._optionalMessage, !v.isInitialized {return false}
      if !SwiftProtobuf.Internal.areAllInitialized(repeatedMessage) {return false}
      return true
    }
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._optionalMessage)
        case 2: try decoder.decodeRepeatedMessageField(value: &_storage._repeatedMessage)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._optionalMessage {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._repeatedMessage.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._repeatedMessage, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_TestEmbedOptimizedForSize) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._optionalMessage != other_storage._optionalMessage {return false}
        if _storage._repeatedMessage != other_storage._repeatedMessage {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
