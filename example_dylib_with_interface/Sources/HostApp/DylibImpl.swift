// Copyright 2021 Yandex LLC. All rights reserved.

import DylibInterface
import Foundation

final class DylibImpl {
    private let getDylibProviderSymName = "getDylibProvider"
    private let dylib: DynamicLinkLibrary

    typealias getDylibProviderFunc = @convention(c) () -> UnsafeMutableRawPointer

    private(set) lazy var getDylibProvider: getDylibProviderFunc =
        self.dylib.load(symbol: getDylibProviderSymName)!

    func getInterface() -> DylibInterface {
        let provider = Unmanaged<DylibInterfaceProvider>.fromOpaque(getDylibProvider()).takeRetainedValue()
        return provider.provide()
    }

    init(path: String) {
        self.dylib = DynamicLinkLibrary(path: path)!
    }
}
