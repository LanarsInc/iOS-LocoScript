// swift-tools-version: 5.8

import PackageDescription

let package = Package(
  name: "LocoScript",
  platforms: [.macOS(.v12), .iOS(.v15)],
  products: [.executable(name: "LocoScript", targets: ["LocoScript"])],
  targets: [
    .executableTarget(name: "LocoScript")
  ]
)
