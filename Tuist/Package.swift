// swift-tools-version: 5.10
@preconcurrency import PackageDescription

#if TUIST
    import struct ProjectDescription.PackageSettings

    let packageSettings = PackageSettings(
        // Customize the product types for specific package product
        // Default is .staticFramework
        // productTypes: ["Alamofire": .framework,]
		productTypes: [
			"Alamofire": .staticFramework
		]
    )
#endif

let package = Package(
    name: "TestingTuist",
    dependencies: [
        // Add your own dependencies here:
        // .package(url: "https://github.com/Alamofire/Alamofire", from: "5.0.0"),
        // You can read more about dependencies here: https://docs.tuist.io/documentation/tuist/dependencies
		.package(url: "https://github.com/Alamofire/Alamofire", from: "5.0.0"),
		.package(name: "PackageTesting", path: "../Packages/Features/PackageTesting"),
		.package(name: "PackageTesting2", path: "../Packages/Features/PackageTesting2"),
    ]
)
