// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SensorVisualizerKit",
    products: [
        .library(
            name: "SensorVisualizerKit",
            targets: ["SensorVisualizerKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SensorVisualizerKit",
            dependencies: [],
            path: "Sources"),
    ]
)
