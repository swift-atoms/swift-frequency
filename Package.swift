// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "swift-frequency",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [
        .library(name: "Frequency", targets: ["Frequency"])
    ],
    dependencies: [
        .package(url: "https://github.com/swift-atoms/swift-quantity.git", branch: "main"),
        .package(url: "https://github.com/swift-atoms/swift-time.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "Frequency",
            dependencies: [
                .product(name: "Quantity", package: "swift-quantity"),
                .product(name: "Time", package: "swift-time"),
            ]
        ),
        .testTarget(
            name: "Frequency Tests",
            dependencies: [
                .target(name: "Frequency")
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    target.swiftSettings =
        (target.swiftSettings ?? []) + [
            .strictMemorySafety(),
            .enableUpcomingFeature("ExistentialAny"),
            .enableUpcomingFeature("InternalImportsByDefault"),
            .enableUpcomingFeature("MemberImportVisibility"),
            .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
            .enableUpcomingFeature("InferIsolatedConformances"),
            .enableExperimentalFeature("Lifetimes"),
            .treatAllWarnings(as: .error),
        ]
}
