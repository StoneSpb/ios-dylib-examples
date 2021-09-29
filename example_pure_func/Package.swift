// swift-tools-version:5.2
// Copyright 2021 Yandex LLC. All rights reserved.

import PackageDescription

let package = Package(
    name: "DylibExample",
    products: [
        .library(name: "Dylib", type: .dynamic, targets: ["Dylib"]),
    ],
    targets: [
        .target(name: "Dylib", dependencies: []),
        .target(name: "HostApp", dependencies: []),
    ]
)
