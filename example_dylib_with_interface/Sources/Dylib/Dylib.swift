// Copyright 2021 Yandex LLC. All rights reserved.

import DylibInterface

struct DylibImpl: DylibInterface {
    func fetch() -> DylibDTO {
        return DylibDTO(str: "Llorem Ipsum", int: 42)
    }
}

@_cdecl("getDylibProvider")
public func getDylibProvider() -> UnsafeMutableRawPointer {
    return Unmanaged.passRetained(DylibProviderImpl()).toOpaque()
}

final class DylibProviderImpl: DylibInterfaceProvider {
    override func provide() -> DylibInterface {
        DylibImpl()
    }
}
