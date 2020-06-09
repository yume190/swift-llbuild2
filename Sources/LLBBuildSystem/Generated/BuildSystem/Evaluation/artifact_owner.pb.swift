// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: BuildSystem/Evaluation/artifact_owner.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// This source file is part of the Swift.org open source project
//
// Copyright (c) 2020 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors

import Foundation
import SwiftProtobuf

import LLBCAS

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

//// An ArtifactOwner contains the reference to the action that generates an artifact, effectively providing the link
//// between artifacts and actions that make up the action graph.
public struct LLBArtifactOwner {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  //// The dataID that contains the actionKey that produces this artifact.
  public var actionID: LLBCAS.LLBPBDataID {
    get {return _actionID ?? LLBCAS.LLBPBDataID()}
    set {_actionID = newValue}
  }
  /// Returns true if `actionID` has been explicitly set.
  public var hasActionID: Bool {return self._actionID != nil}
  /// Clears the value of `actionID`. Subsequent reads from it will return its default value.
  public mutating func clearActionID() {self._actionID = nil}

  //// The index of the artifact in the list of outputs.
  public var outputIndex: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _actionID: LLBCAS.LLBPBDataID? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension LLBArtifactOwner: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "LLBArtifactOwner"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "actionID"),
    2: .same(proto: "outputIndex"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._actionID)
      case 2: try decoder.decodeSingularInt32Field(value: &self.outputIndex)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._actionID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.outputIndex != 0 {
      try visitor.visitSingularInt32Field(value: self.outputIndex, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: LLBArtifactOwner, rhs: LLBArtifactOwner) -> Bool {
    if lhs._actionID != rhs._actionID {return false}
    if lhs.outputIndex != rhs.outputIndex {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}