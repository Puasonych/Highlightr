// swift-tools-version:5.0

import PackageDescription

let package = Package(
  
  name: "Highlightr",
  
  platforms: [
    .macOS(.v10_14), .iOS(.v12)
  ],
  
  products: [
    .library(name: "Highlightr", targets: [ "Highlightr" ]),
  ],
  
  dependencies: [
    .package(url: "https://github.com/SwiftWebResources/HighlightJS-Swift.git",
             from: "9.18.1"),
    .package(url: "https://github.com/1024jp/GzipSwift.git",
             from: "5.1.1")
  ],
  
  targets: [
    .target(name: "Highlightr", dependencies: [ "HighlightJS", "Gzip" ]),
    .testTarget(name: "HighlightrTests", dependencies: ["Highlightr"])
  ]
)
