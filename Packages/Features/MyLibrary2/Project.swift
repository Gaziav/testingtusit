import ProjectDescription

let project = Project(
	name: "MyLibrary2",
	targets: [
		.target(
			name: "MyLibraryTwo",
			destinations: .iOS,
			product: .staticLibrary,
			bundleId: "",
			infoPlist: .none,
			sources: ["./MyLibraryTwo/**"],
			resources: [""],
			dependencies: [
				.target(name: "MyLibraryAPI2", status: .required, condition: nil),
				.project(target: "MyLibraryAPI", path: "../MyLibrary", status: .required, condition: nil),
				.external(name: "Alamofire", condition: nil)
			]
		),
		.target(
			name: "MyLibraryAPI2",
			destinations: .iOS,
			product: .staticFramework,
			bundleId: "",
			infoPlist: .none,
			sources: ["./MyLibraryAPI2/**"],
			resources: [],
			dependencies: []
		),
		.target(
			name: "MyLibraryExampleApp",
			destinations: .iOS,
			product: .app,
			bundleId: "com.random.example",
			infoPlist: .default,
			sources: ["./ExampleApp/**"],
			resources: [],
			dependencies: []
		),
		.target(
			name: "MyLibraryTests",
			destinations: .iOS,
			product: .unitTests,
			bundleId: "",
			infoPlist: .none,
			sources: ["./Tests/**"],
			resources: [],
			dependencies: []
		),
		.target(
			name: "MyLibraryMocks",
			destinations: .iOS,
			product: .unitTests,
			bundleId: "",
			infoPlist: .default,
			sources: ["./Mocks/**"],
			resources: [],
			dependencies: []
		)
	]
)

