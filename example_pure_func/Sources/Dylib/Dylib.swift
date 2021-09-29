// Copyright 2021 Yandex LLC. All rights reserved.

import Foundation

@_cdecl("performSampleTask")
public func performSampleTask(
    _ name: String,
    _ options: [String: Any]?
) -> Bool {
    print("Performing task with name: \(name), options: \(options ?? [:])")
    return true
}
