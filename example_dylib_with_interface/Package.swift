// swift-tools-version:5.2
// Copyright 2021 Yandex LLC. All rights reserved.

import PackageDescription

let package2 = Package(
    name: "DylibExample",
    products: [
        .library(name: "Dylib", type: .dynamic, targets: ["Dylib"]),
    ],
    dependencies: [
        .package(name: "DylibInterface", path: "../example_interface"),
    ],
    targets: [
        .target(name: "Dylib", dependencies: ["DylibInterface"]),
        .target(name: "HostApp", dependencies: ["DylibInterface"]),
    ]
)
