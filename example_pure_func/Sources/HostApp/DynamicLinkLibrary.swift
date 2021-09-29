// Copyright 2021 Yandex LLC. All rights reserved.

import Darwin

public final class DynamicLinkLibrary {
    public let handle: UnsafeMutableRawPointer

    public init?(path: String, mode: Int32 = RTLD_LAZY) {
        guard let handle = dlopen(path, mode) else { return nil }
        self.handle = handle
    }

    deinit {
        dlclose(handle)
    }

    public func load<T>(symbol: String) -> T? {
        dlsym(handle, symbol).map { unsafeBitCast($0, to: T.self) }
    }
}
