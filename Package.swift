// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "OhhAuth",
    platforms: [
       .macOS(.v10_15),
    ],
    products: [
        .library(name: "OhhAuth", targets: ["OhhAuth"])
    ],
    dependencies: [
    	.package(url: "https://github.com/apple/swift-crypto.git", from: "1.0.0"),
    ],
    targets: [
        .target(name: "OhhAuth", dependencies: [
            .product(name: "Crypto", package: "swift-crypto")
        ]),
    ]
)
