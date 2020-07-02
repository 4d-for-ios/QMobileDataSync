// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "QMobileDataSync",
    platforms: [
        .macOS(.v10_14),
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "QMobileDataSync",
            targets: ["QMobileDataSync"])
    ],
    dependencies: [
        .package(url: "https://github.com/DaveWoodCom/XCGLogger.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "QMobileDataSync",
            dependencies: ["XCGLogger"],
            path: "Sources")
    ]
)
