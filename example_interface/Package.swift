// swift-tools-version:5.2
// Copyright 2021 Yandex LLC. All rights reserved.

import PackageDescription

let package = Package(
    name: "DylibInterface",
    products: [
        .library(name: "DylibInterface", type: .dynamic, targets: ["DylibInterface"]),
    ],
    targets: [
        .target(name: "DylibInterface", dependencies: []),
    ]
)
