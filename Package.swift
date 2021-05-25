// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Koloda",
    platforms: [.iOS(.v9)],
    products: [
        .library (
            name: "Koloda",
            targets: ["Koloda"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/trdahn/pop", .branch("master"))
    ],
    targets: [
        .target(
            name: "Koloda",
            dependencies: ["pop"],
            path: "Pod/Classes/KolodaView",
            linkerSettings: [
                .linkedFramework("UIKit")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
