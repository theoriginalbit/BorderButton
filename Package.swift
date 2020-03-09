// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "BorderButton",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(name: "BorderButton", targets: ["BorderButton"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "BorderButton", dependencies: []),
    ]
)
