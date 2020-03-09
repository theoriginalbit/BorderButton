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
        .package(url: "https://github.com/theoriginalbit/ShapeButton.git", .upToNextMajor(from: "1.1.0"))
    ],
    targets: [
        .target(name: "BorderButton", dependencies: ["ShapeButton"]),
    ]
)
