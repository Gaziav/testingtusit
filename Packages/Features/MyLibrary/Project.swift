import ProjectDescription

let project = Project(
	name: "MyLibrary",
	targets: [
		.target(
			name: "MyLibrary",
			destinations: .iOS,
			product: .staticLibrary,
			bundleId: "",
			infoPlist: .none,
			sources: ["./MyLibrary/**"],
			resources: [""],
			dependencies: [.target(name: "MyLibraryAPI", status: .required, condition: nil)]
		),
		.target(
			name: "MyLibraryAPI",
			destinations: .iOS,
			product: .staticFramework,
			bundleId: "",
			infoPlist: .default,
			sources: ["./MyLibraryAPI/**"],
			resources: [],
			dependencies: []
		),
		.target(
			name: "KekExampleApp",
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
			infoPlist: .default,
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

