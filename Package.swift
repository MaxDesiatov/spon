// swift-tools-version:5.2
import PackageDescription

let package = Package(
  name: "spon",
  platforms: [
    .macOS(.v10_15),
  ],
  products: [
    .executable(name: "spon", targets: ["Run"]),
  ],
  dependencies: [
    .package(url: "https://github.com/NSHipster/HypertextLiteral", from: "0.0.1"),
    .package(url: "https://github.com/vapor/vapor.git", from: "4.3.1"),
  ],
  targets: [
    .target(name: "App", dependencies: [
      .product(name: "Vapor", package: "vapor"),
      "HypertextLiteral",
    ]),
    .target(name: "Run", dependencies: ["App"]),
    .testTarget(name: "AppTests", dependencies: [
      .target(name: "App"),
      .product(name: "XCTVapor", package: "vapor"),
    ]),
  ]
)
