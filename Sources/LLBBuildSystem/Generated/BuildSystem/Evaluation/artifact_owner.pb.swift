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

public struct ArtifactOwnerKey {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var artifactOwnerID: LLBCAS.LLBDataID {
    get {return _artifactOwnerID ?? LLBCAS.LLBDataID()}
    set {_artifactOwnerID = newValue}
  }
  /// Returns true if `artifactOwnerID` has been explicitly set.
  public var hasArtifactOwnerID: Bool {return self._artifactOwnerID != nil}
  /// Clears the value of `artifactOwnerID`. Subsequent reads from it will return its default value.
  public mutating func clearArtifactOwnerID() {self._artifactOwnerID = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _artifactOwnerID: LLBCAS.LLBDataID? = nil
}

public struct ArtifactOwnerValue {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var actionIds: [LLBCAS.LLBDataID] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// An ArtifactOwner contains the reference to the action that generates an artifact, effectively providing the link
/// between artifacts and actions that make up the action graph.
public struct LLBArtifactOwner {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The dataID that contains the list of actions where the artifact owner action resides. This corresponds to a
  /// dataID that can be used in a RuleEvaluationKeyID to obtain the list of actions.
  public var actionsOwner: LLBCAS.LLBDataID {
    get {return _actionsOwner ?? LLBCAS.LLBDataID()}
    set {_actionsOwner = newValue}
  }
  /// Returns true if `actionsOwner` has been explicitly set.
  public var hasActionsOwner: Bool {return self._actionsOwner != nil}
  /// Clears the value of `actionsOwner`. Subsequent reads from it will return its default value.
  public mutating func clearActionsOwner() {self._actionsOwner = nil}

  /// The index of the action in the action list.
  public var actionIndex: Int32 = 0

  /// The index of the artifact in the list of outputs.
  public var outputIndex: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _actionsOwner: LLBCAS.LLBDataID? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension ArtifactOwnerKey: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "ArtifactOwnerKey"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "artifactOwnerID"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._artifactOwnerID)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._artifactOwnerID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: ArtifactOwnerKey, rhs: ArtifactOwnerKey) -> Bool {
    if lhs._artifactOwnerID != rhs._artifactOwnerID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ArtifactOwnerValue: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "ArtifactOwnerValue"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "actionIDs"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.actionIds)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.actionIds.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.actionIds, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: ArtifactOwnerValue, rhs: ArtifactOwnerValue) -> Bool {
    if lhs.actionIds != rhs.actionIds {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension LLBArtifactOwner: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "LLBArtifactOwner"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "actionsOwner"),
    2: .same(proto: "actionIndex"),
    3: .same(proto: "outputIndex"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._actionsOwner)
      case 2: try decoder.decodeSingularInt32Field(value: &self.actionIndex)
      case 3: try decoder.decodeSingularInt32Field(value: &self.outputIndex)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._actionsOwner {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.actionIndex != 0 {
      try visitor.visitSingularInt32Field(value: self.actionIndex, fieldNumber: 2)
    }
    if self.outputIndex != 0 {
      try visitor.visitSingularInt32Field(value: self.outputIndex, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: LLBArtifactOwner, rhs: LLBArtifactOwner) -> Bool {
    if lhs._actionsOwner != rhs._actionsOwner {return false}
    if lhs.actionIndex != rhs.actionIndex {return false}
    if lhs.outputIndex != rhs.outputIndex {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
