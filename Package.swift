// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FengNiao",
    products: [
        .executable(name: "FengNiao", targets: ["FengNiao"]),
    ],
    dependencies: [
        .package(url: "https://github.com/maniOrbs/CommandLine", from: "0.0.1"),
        .package(url: "https://github.com/maniOrbs/Rainbow", from: "0.0.2"),
        .package(url: "https://github.com/maniOrbs/PathKit", from: "0.0.1"),
        .package(url: "https://github.com/maniOrbs/Spectre", from: "0.0.1")
    ],
    targets: [
        .target(name: "FengNiaoKit",dependencies: ["Rainbow", "PathKit"]),
        .target(name: "FengNiao",dependencies: ["FengNiaoKit", "CommandLine"]),
        .testTarget(name: "FengNiaoTests",dependencies: ["FengNiaoKit", "Spectre"], exclude: ["Tests/Fixtures"]),
    ]
)
