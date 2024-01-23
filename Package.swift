// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TcrUtilsKit",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TcrUtilsKit",
            targets: ["TcrUtilsKit", "TcrLib"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TcrUtilsKit"),
        .binaryTarget(name: "TcrLib", path: "TcrLib.xcframework"),
        .testTarget(
            name: "TcrUtilsKitTests",
            dependencies: ["TcrUtilsKit"]),
    ]
)
