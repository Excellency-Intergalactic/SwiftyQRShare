// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyQRShare",
    products: [
        .library(
            name: "SwiftyQRShare",
            targets: ["SwiftyQRShare"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SwiftyQRShare",
            dependencies: [])
    ]
)
