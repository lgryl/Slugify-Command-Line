// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SlugifyCommandLine",
    platforms: [
        .iOS(.v13), .macOS(.v10_14)
    ],
    dependencies: [
        .package(
            url: "https://github.com/lgryl/Slugify",
            from: "0.1.0"
        ),
        .package(
            url: "https://github.com/apple/swift-argument-parser",
            from: "1.0.0"
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "SlugifyCommandLine",
            dependencies: [
                .product(name: "Slugify", package: "Slugify"),
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        ),
        .testTarget(
            name: "SlugifyCommandLineTests",
            dependencies: ["SlugifyCommandLine"]),
    ]
)
