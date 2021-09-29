// Copyright 2021 Yandex LLC. All rights reserved.

import Foundation

final class DylibImpl {
    private let performSampleTaskSymName = "performSampleTask"
    private let dylib: DynamicLinkLibrary

    typealias PerformSampleTaskFunc = @convention(c) (
        _ name: String,
        _ options: [String: Any]?
    ) -> (Bool)

    private(set) lazy var performSampleTask: PerformSampleTaskFunc =
        self.dylib.load(symbol: performSampleTaskSymName)!

    init(path: String) {
        self.dylib = DynamicLinkLibrary(path: path)!
    }
}
