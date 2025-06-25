// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "libxml",
    products: [
        .library(name: "libxml", targets: ["libxml"]),
    ],
    targets: [
        .systemLibrary(
            name: "libxml",
            pkgConfig: "libxml-2.0",
            providers: [
                .apt(["libxml2-dev"]),
            ]
        )
    ]
)
