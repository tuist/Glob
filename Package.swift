// swift-tools-version:5.5.0
import PackageDescription
let package = Package(
	name: "Glob",
	products: [
		.library(
			name: "Glob",
			targets: ["Glob"]),
	],
	dependencies: [],
	targets: [
		.binaryTarget(
			name: "RustXcframework",
			path: "RustXcframework.xcframework"
		),
		.target(
			name: "Glob",
			dependencies: ["RustXcframework"])
	]
)
	