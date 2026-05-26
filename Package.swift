// swift-tools-version: 6.0
import PackageDescription
let package = Package(
  name: "social-wire-appview-kit",
  platforms: [.macOS(.v14)],
  products: [.library(name: "ThinAppViewCore", targets: ["ThinAppViewCore"])],
  dependencies: [.package(path: "../atproto-primitives")],
  targets: [
    .target(name: "ThinAppViewCore", dependencies: [.product(name: "AtprotoPrimitives", package: "atproto-primitives")], path: "Sources/ThinAppViewCore"),
    .testTarget(name: "ThinAppViewCoreTests", dependencies: ["ThinAppViewCore"], path: "Tests/ThinAppViewCoreTests"),
  ]
)
