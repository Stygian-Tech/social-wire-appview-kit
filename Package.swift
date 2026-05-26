// swift-tools-version: 6.0
import PackageDescription
let package = Package(
  name: "social-wire-appview-kit",
  platforms: [.macOS(.v14)],
  products: [.library(name: "ThinAppViewCore", targets: ["ThinAppViewCore"])],
  dependencies: [.package(path: "../stygian-core")],
  targets: [
    .target(name: "ThinAppViewCore", dependencies: [.product(name: "StygianCore", package: "stygian-core")], path: "Sources/ThinAppViewCore"),
    .testTarget(name: "ThinAppViewCoreTests", dependencies: ["ThinAppViewCore"], path: "Tests/ThinAppViewCoreTests"),
  ]
)
