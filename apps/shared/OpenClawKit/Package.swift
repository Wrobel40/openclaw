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
        // Textual removed - requires iOS 18, keeping for potential future use
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
            ],
            path: "Sources/OpenClawChatUI"),
    ])
