// swift-tools-version:4.2
import PackageDescription

let deps: [Package.Dependency]
#if os(Linux)
	deps = [.Package(url: "https://github.com/mdaxter/CBSD.git", majorVersion: 1)]
#else
	deps = []
#endif

let package = Package(
    name: "BigNumber",
    products: [
        .library(
            name: "BigNumber",
            targets: ["BigNumber"]),
    ],
    dependencies: deps,
    targets: [
        .target(
            name: "BigNumber",
            dependencies: [],
            path: "Sources"),
    ]
)
