/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/unittest_mset.proto
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
//  This file is similar to unittest_mset_wire_format.proto, but does not
//  have a TestMessageSet, so it can be downgraded to proto1.

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

struct ProtobufUnittest_TestMessageSetContainer: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TestMessageSetContainer"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "message_set"),
  ]

  private class _StorageClass {
    var _messageSet: Proto2WireformatUnittest_TestMessageSet? = nil

    init() {}

    init(storage source: _StorageClass) {
      _messageSet = source._messageSet
    }
  }

  private var _storage = _StorageClass()

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(storage: _storage)
    }
    return _storage
  }

  var messageSet: Proto2WireformatUnittest_TestMessageSet {
    get {return _storage._messageSet ?? Proto2WireformatUnittest_TestMessageSet()}
    set {_uniqueStorage()._messageSet = newValue}
  }
  var hasMessageSet: Bool {
    return _storage._messageSet != nil
  }
  mutating func clearMessageSet() {
    return _storage._messageSet = nil
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  public var isInitialized: Bool {
    return withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._messageSet, !v.isInitialized {return false}
      return true
    }
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._messageSet)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._messageSet {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_TestMessageSetContainer) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._messageSet != other_storage._messageSet {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

struct ProtobufUnittest_TestMessageSetExtension1: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TestMessageSetExtension1"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    15: .same(proto: "i"),
  ]

  private var _i: Int32? = nil
  var i: Int32 {
    get {return _i ?? 0}
    set {_i = newValue}
  }
  var hasI: Bool {
    return _i != nil
  }
  mutating func clearI() {
    return _i = nil
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct Extensions {

    static let message_set_extension = SwiftProtobuf.MessageExtension<OptionalMessageExtensionField<ProtobufUnittest_TestMessageSetExtension1>, Proto2WireformatUnittest_TestMessageSet>(
      _protobuf_fieldNumber: 1545008,
      fieldName: "protobuf_unittest.TestMessageSetExtension1.message_set_extension",
      defaultValue: ProtobufUnittest_TestMessageSetExtension1()
    )
  }

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 15: try decoder.decodeSingularInt32Field(value: &_i)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = _i {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 15)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_TestMessageSetExtension1) -> Bool {
    if _i != other._i {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

struct ProtobufUnittest_TestMessageSetExtension2: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TestMessageSetExtension2"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    25: .same(proto: "str"),
  ]

  private var _str: String? = nil
  var str: String {
    get {return _str ?? ""}
    set {_str = newValue}
  }
  var hasStr: Bool {
    return _str != nil
  }
  mutating func clearStr() {
    return _str = nil
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct Extensions {

    static let message_set_extension = SwiftProtobuf.MessageExtension<OptionalMessageExtensionField<ProtobufUnittest_TestMessageSetExtension2>, Proto2WireformatUnittest_TestMessageSet>(
      _protobuf_fieldNumber: 1547769,
      fieldName: "protobuf_unittest.TestMessageSetExtension2.message_set_extension",
      defaultValue: ProtobufUnittest_TestMessageSetExtension2()
    )
  }

  init() {}

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 25: try decoder.decodeSingularStringField(value: &_str)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = _str {
      try visitor.visitSingularStringField(value: v, fieldNumber: 25)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_TestMessageSetExtension2) -> Bool {
    if _str != other._str {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

///   MessageSet wire format is equivalent to this.
struct ProtobufUnittest_RawMessageSet: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".RawMessageSet"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .unique(proto: "Item", json: "item"),
  ]

  var item: [ProtobufUnittest_RawMessageSet.Item] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct Item: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = ProtobufUnittest_RawMessageSet.protoMessageName + ".Item"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
      2: .standard(proto: "type_id"),
      3: .same(proto: "message"),
    ]

    private var _typeId: Int32? = nil
    var typeId: Int32 {
      get {return _typeId ?? 0}
      set {_typeId = newValue}
    }
    var hasTypeId: Bool {
      return _typeId != nil
    }
    mutating func clearTypeId() {
      return _typeId = nil
    }

    private var _message: Data? = nil
    var message: Data {
      get {return _message ?? Data()}
      set {_message = newValue}
    }
    var hasMessage: Bool {
      return _message != nil
    }
    mutating func clearMessage() {
      return _message = nil
    }

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    public var isInitialized: Bool {
      if _typeId == nil {return false}
      if _message == nil {return false}
      return true
    }

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 2: try decoder.decodeSingularInt32Field(value: &_typeId)
        case 3: try decoder.decodeSingularBytesField(value: &_message)
        default: break
        }
      }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      if let v = _typeId {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 2)
      }
      if let v = _message {
        try visitor.visitSingularBytesField(value: v, fieldNumber: 3)
      }
      try unknownFields.traverse(visitor: &visitor)
    }

    func _protobuf_generated_isEqualTo(other: ProtobufUnittest_RawMessageSet.Item) -> Bool {
      if _typeId != other._typeId {return false}
      if _message != other._message {return false}
      if unknownFields != other.unknownFields {return false}
      return true
    }
  }

  init() {}

  public var isInitialized: Bool {
    if !SwiftProtobuf.Internal.areAllInitialized(item) {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedGroupField(value: &item)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !item.isEmpty {
      try visitor.visitRepeatedGroupField(value: item, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_RawMessageSet) -> Bool {
    if item != other.item {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Proto2WireformatUnittest_TestMessageSet {
  var ProtobufUnittest_TestMessageSetExtension1_messageSetExtension: ProtobufUnittest_TestMessageSetExtension1 {
    get {return getExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension1.Extensions.message_set_extension) ?? ProtobufUnittest_TestMessageSetExtension1()}
    set {setExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension1.Extensions.message_set_extension, value: newValue)}
  }
  var hasProtobufUnittest_TestMessageSetExtension1_messageSetExtension: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension1.Extensions.message_set_extension)
  }
  mutating func clearProtobufUnittest_TestMessageSetExtension1_messageSetExtension() {
    clearExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension1.Extensions.message_set_extension)
  }
}

extension Proto2WireformatUnittest_TestMessageSet {
  var ProtobufUnittest_TestMessageSetExtension2_messageSetExtension: ProtobufUnittest_TestMessageSetExtension2 {
    get {return getExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension2.Extensions.message_set_extension) ?? ProtobufUnittest_TestMessageSetExtension2()}
    set {setExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension2.Extensions.message_set_extension, value: newValue)}
  }
  var hasProtobufUnittest_TestMessageSetExtension2_messageSetExtension: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension2.Extensions.message_set_extension)
  }
  mutating func clearProtobufUnittest_TestMessageSetExtension2_messageSetExtension() {
    clearExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension2.Extensions.message_set_extension)
  }
}

let ProtobufUnittest_UnittestMset_Extensions: SwiftProtobuf.SimpleExtensionMap = [
  ProtobufUnittest_TestMessageSetExtension1.Extensions.message_set_extension,
  ProtobufUnittest_TestMessageSetExtension2.Extensions.message_set_extension
]
