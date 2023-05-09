// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PreviewSwiftUIKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "PreviewSwiftUIKit",
            targets: ["PreviewSwiftUIKit"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "PreviewSwiftUIKit",
            dependencies: [],
            path: "Sources"
        )
    ]
)
