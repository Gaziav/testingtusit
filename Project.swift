import ProjectDescription

let project = Project(
    name: "TestingTuist",
    targets: [
        .target(
            name: "TestingTuist",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.TestingTuist",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["TestingTuist/Sources/**"],
            resources: ["TestingTuist/Resources/**"],
			dependencies: [
				.project(target: "MyLibraryAPI2", path: "./Packages/Features/MyLibrary2", status: .required, condition: nil),
				.external(name: "PackageTesting", condition: nil),
			]
			
        ),
        .target(
            name: "TestingTuistTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.TestingTuistTests",
            infoPlist: .default,
            sources: ["TestingTuist/Tests/**"],
            resources: [],
            dependencies: [.target(name: "TestingTuist")]
        )
    ]
)
