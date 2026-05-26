// swift-tools-version: 6.0
import PackageDescription
let package = Package(
  name: "social-wire-appview-kit",
  platforms: [.macOS(.v14)],
  products: [.library(name: "ThinAppViewCore", targets: ["ThinAppViewCore"])],
  dependencies: [.package(url: "https://github.com/Stygian-Tech/atproto-primitive-kit.git", revision: "1105fb3c008a1048c40b9d1b71cc2cc8e51319b0")],
  targets: [
    .target(name: "ThinAppViewCore", dependencies: [.product(name: "ATProtoPrimitiveKit", package: "atproto-primitive-kit")], path: "Sources/ThinAppViewCore"),
    .testTarget(name: "ThinAppViewCoreTests", dependencies: ["ThinAppViewCore"], path: "Tests/ThinAppViewCoreTests"),
  ]
)
