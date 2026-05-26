// swift-tools-version: 6.0
import PackageDescription
let package = Package(
  name: "social-wire-appview-kit",
  platforms: [.macOS(.v14)],
  products: [.library(name: "ThinAppViewCore", targets: ["ThinAppViewCore"])],
  dependencies: [.package(path: "../atproto-primitive-kit")],
  targets: [
    .target(name: "ThinAppViewCore", dependencies: [.product(name: "ATProtoPrimitiveKit", package: "atproto-primitive-kit")], path: "Sources/ThinAppViewCore"),
    .testTarget(name: "ThinAppViewCoreTests", dependencies: ["ThinAppViewCore"], path: "Tests/ThinAppViewCoreTests"),
  ]
)
