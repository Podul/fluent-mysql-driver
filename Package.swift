// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "fluent-mysql-driver",
    products: [
        .library(name: "FluentMySQLDriver", targets: ["FluentMySQLDriver"]),
    ],
    dependencies: [
        .package(url: "file:///Users/geetol/Documents/Vapor/fluent-kit", .revision("13a1e57ba7bb0edd398f12f6b07244fb5b328e0f")),
        .package(url: "https://github.com/vapor/mysql-kit.git", from: "4.0.0-beta"),
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0")
    ],
    targets: [
        .target(name: "FluentMySQLDriver", dependencies: [
            "FluentKit",
            "FluentSQL",
            "Logging",
            "MySQLKit"
        ]),
        .testTarget(name: "FluentMySQLDriverTests", dependencies: ["FluentBenchmark", "FluentMySQLDriver"]),
    ]
)
