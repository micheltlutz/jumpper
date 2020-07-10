// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "jumpper",
    products: [
        .library(
            name: "jumpper",
            targets: ["jumpper"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "jumpper",
            dependencies: []),
        .testTarget(
            name: "jumpperTests",
            dependencies: ["jumpper"]),
    ]
)
