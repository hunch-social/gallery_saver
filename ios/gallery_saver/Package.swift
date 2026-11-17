// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Added for the Hunch app's iOS Swift Package Manager migration; the podspec
// points at the same sources so CocoaPods builds keep working.

import PackageDescription

let package = Package(
    name: "gallery_saver",
    platforms: [
        .iOS("12.0"),
    ],
    products: [
        .library(name: "gallery-saver", targets: ["gallery_saver"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "gallery_saver",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ]
        )
    ]
)
