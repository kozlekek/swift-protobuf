/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: unittest_swift_cycle.proto
 *
 */

//  Protocol Buffers - Google's data interchange format
//  Copyright 2015 Google Inc.  All rights reserved.
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

struct ProtobufUnittest_CycleFoo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CycleFoo"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "a_foo"),
    2: .standard(proto: "a_bar"),
    3: .standard(proto: "a_baz"),
  ]

  private class _StorageClass {
    var _aFoo: ProtobufUnittest_CycleFoo? = nil
    var _aBar: ProtobufUnittest_CycleBar? = nil
    var _aBaz: ProtobufUnittest_CycleBaz? = nil

    init() {}

    init(storage source: _StorageClass) {
      _aFoo = source._aFoo
      _aBar = source._aBar
      _aBaz = source._aBaz
    }
  }

  private var _storage = _StorageClass()

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(storage: _storage)
    }
    return _storage
  }

  var aFoo: ProtobufUnittest_CycleFoo {
    get {return _storage._aFoo ?? ProtobufUnittest_CycleFoo()}
    set {_uniqueStorage()._aFoo = newValue}
  }
  var hasAFoo: Bool {
    return _storage._aFoo != nil
  }
  mutating func clearAFoo() {
    return _storage._aFoo = nil
  }

  var aBar: ProtobufUnittest_CycleBar {
    get {return _storage._aBar ?? ProtobufUnittest_CycleBar()}
    set {_uniqueStorage()._aBar = newValue}
  }
  var hasABar: Bool {
    return _storage._aBar != nil
  }
  mutating func clearABar() {
    return _storage._aBar = nil
  }

  var aBaz: ProtobufUnittest_CycleBaz {
    get {return _storage._aBaz ?? ProtobufUnittest_CycleBaz()}
    set {_uniqueStorage()._aBaz = newValue}
  }
  var hasABaz: Bool {
    return _storage._aBaz != nil
  }
  mutating func clearABaz() {
    return _storage._aBaz = nil
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._aFoo)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._aBar)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._aBaz)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._aFoo {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._aBar {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._aBaz {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_CycleFoo) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._aFoo != other_storage._aFoo {return false}
        if _storage._aBar != other_storage._aBar {return false}
        if _storage._aBaz != other_storage._aBaz {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

struct ProtobufUnittest_CycleBar: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CycleBar"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "a_bar"),
    2: .standard(proto: "a_baz"),
    3: .standard(proto: "a_foo"),
  ]

  private class _StorageClass {
    var _aBar: ProtobufUnittest_CycleBar? = nil
    var _aBaz: ProtobufUnittest_CycleBaz? = nil
    var _aFoo: ProtobufUnittest_CycleFoo? = nil

    init() {}

    init(storage source: _StorageClass) {
      _aBar = source._aBar
      _aBaz = source._aBaz
      _aFoo = source._aFoo
    }
  }

  private var _storage = _StorageClass()

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(storage: _storage)
    }
    return _storage
  }

  var aBar: ProtobufUnittest_CycleBar {
    get {return _storage._aBar ?? ProtobufUnittest_CycleBar()}
    set {_uniqueStorage()._aBar = newValue}
  }
  var hasABar: Bool {
    return _storage._aBar != nil
  }
  mutating func clearABar() {
    return _storage._aBar = nil
  }

  var aBaz: ProtobufUnittest_CycleBaz {
    get {return _storage._aBaz ?? ProtobufUnittest_CycleBaz()}
    set {_uniqueStorage()._aBaz = newValue}
  }
  var hasABaz: Bool {
    return _storage._aBaz != nil
  }
  mutating func clearABaz() {
    return _storage._aBaz = nil
  }

  var aFoo: ProtobufUnittest_CycleFoo {
    get {return _storage._aFoo ?? ProtobufUnittest_CycleFoo()}
    set {_uniqueStorage()._aFoo = newValue}
  }
  var hasAFoo: Bool {
    return _storage._aFoo != nil
  }
  mutating func clearAFoo() {
    return _storage._aFoo = nil
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._aBar)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._aBaz)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._aFoo)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._aBar {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._aBaz {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._aFoo {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_CycleBar) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._aBar != other_storage._aBar {return false}
        if _storage._aBaz != other_storage._aBaz {return false}
        if _storage._aFoo != other_storage._aFoo {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

struct ProtobufUnittest_CycleBaz: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CycleBaz"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "a_baz"),
    2: .standard(proto: "a_foo"),
    3: .standard(proto: "a_bar"),
  ]

  private class _StorageClass {
    var _aBaz: ProtobufUnittest_CycleBaz? = nil
    var _aFoo: ProtobufUnittest_CycleFoo? = nil
    var _aBar: ProtobufUnittest_CycleBar? = nil

    init() {}

    init(storage source: _StorageClass) {
      _aBaz = source._aBaz
      _aFoo = source._aFoo
      _aBar = source._aBar
    }
  }

  private var _storage = _StorageClass()

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(storage: _storage)
    }
    return _storage
  }

  var aBaz: ProtobufUnittest_CycleBaz {
    get {return _storage._aBaz ?? ProtobufUnittest_CycleBaz()}
    set {_uniqueStorage()._aBaz = newValue}
  }
  var hasABaz: Bool {
    return _storage._aBaz != nil
  }
  mutating func clearABaz() {
    return _storage._aBaz = nil
  }

  var aFoo: ProtobufUnittest_CycleFoo {
    get {return _storage._aFoo ?? ProtobufUnittest_CycleFoo()}
    set {_uniqueStorage()._aFoo = newValue}
  }
  var hasAFoo: Bool {
    return _storage._aFoo != nil
  }
  mutating func clearAFoo() {
    return _storage._aFoo = nil
  }

  var aBar: ProtobufUnittest_CycleBar {
    get {return _storage._aBar ?? ProtobufUnittest_CycleBar()}
    set {_uniqueStorage()._aBar = newValue}
  }
  var hasABar: Bool {
    return _storage._aBar != nil
  }
  mutating func clearABar() {
    return _storage._aBar = nil
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._aBaz)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._aFoo)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._aBar)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._aBaz {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._aFoo {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._aBar {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_CycleBaz) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._aBaz != other_storage._aBaz {return false}
        if _storage._aFoo != other_storage._aFoo {return false}
        if _storage._aBar != other_storage._aBar {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
