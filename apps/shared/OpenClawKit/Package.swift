// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "OpenClawKit",
    platforms: [
        .iOS(.v18),
        .macOS(.v13),
    ],
    products: [
        .library(name: "OpenClawProtocol", targets: ["OpenClawProtocol"]),
        .library(name: "OpenClawKit", targets: ["OpenClawKit"]),
        .library(name: "OpenClawChatUI", targets: ["OpenClawChatUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/gonzalezreal/textual", exact: "0.3.1"),
    ],
    targets: [
        .target(
            name: "OpenClawProtocol",
            path: "Sources/OpenClawProtocol"),
        .target(
            name: "OpenClawKit",
            dependencies: ["OpenClawProtocol"],
            path: "Sources/OpenClawKit",
            resources: [.process("Resources")]),
        .target(
            name: "OpenClawChatUI",
            dependencies: [
                "OpenClawKit",
                .product(name: "Textual", package: "textual"),
            ],
            path: "Sources/OpenClawChatUI"),
    ])
