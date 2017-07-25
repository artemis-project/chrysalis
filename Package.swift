// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "chrysalis",
    dependencies: [
        .Package(url: "https://github.com/Longhanks/qlift", Version(0, 0, 15))
    ]
)
