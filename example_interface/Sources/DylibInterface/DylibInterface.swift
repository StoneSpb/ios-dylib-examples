// Copyright 2021 Yandex LLC. All rights reserved.

public struct DylibDTO {
    public let str: String
    public let int: Int

    public init(str: String, int: Int) {
        self.str = str
        self.int = int
    }
}

public protocol DylibInterface {
    func fetch() -> DylibDTO
}

// We use abstract class since `Unmanaged` only supports class type.
open class DylibInterfaceProvider {
    public init() {}

    open func provide() -> DylibInterface {
        preconditionFailure("Not implemented")
    }
}
