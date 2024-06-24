// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Google-Cast-SDK",
    platforms: [
        .iOS(
            .v14
        )
    ],
    products: [
        .library(
            name: "Google-Cast-SDK",
            targets: ["Google-Cast-SDK"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/luistferreira/protobuf.git",
            .branchItem(
                "main"
            )
        )
    ],
    targets: [
        .target(
            name: "Google-Cast-SDK",
            dependencies: [
                .product(
                    name: "protobuf",
                    package: "protobuf"
                )
            ],
            path: "./Google-Cast-SDK-iOS"
        )
    ]
)
