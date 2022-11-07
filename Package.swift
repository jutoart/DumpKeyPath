// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "DumpKeyPath",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  dependencies: [
    .package(
      url: "https://github.com/pointfreeco/swift-custom-dump.git",
      from: "0.6.0"
    )
  ],
  targets: [
    .executableTarget(
      name: "DumpKeyPath",
      dependencies: [
        .product(name: "CustomDump", package: "swift-custom-dump")
      ]
    )
  ]
)
