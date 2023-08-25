// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "LocoScript",
  platforms: [.macOS(.v12)],
  products: [
    .executable(name: "LocoScript", targets: ["LocoScript"]),
  ],
  targets: [
    .executableTarget(name: "LocoScript"),
    .testTarget(name: "LocoScriptTests", dependencies: ["LocoScript"]),
  ]
)
