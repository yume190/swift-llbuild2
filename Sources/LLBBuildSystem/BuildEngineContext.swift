// This source file is part of the Swift.org open source project
//
// Copyright (c) 2020 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors

import llbuild2

/// Basic build engine context implementation.
public class LLBBasicBuildEngineContext: LLBBuildEngineContext {
    public let group: LLBFuturesDispatchGroup
    public let db: LLBCASDatabase
    public let executor: LLBExecutor

    public init(group: LLBFuturesDispatchGroup, db: LLBCASDatabase, executor: LLBExecutor) {
        self.group = group
        self.db = db
        self.executor = executor
    }
}
