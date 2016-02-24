import PackageDescription

let package = Package(
  name: "HelloWorld",
  dependencies: [
//    .Package(url: "https://github.com/kylef/Curassow.git", majorVersion: 0, minor: 2),
    .Package(url: "https://github.com/nestproject/Frank.git", majorVersion: 0, minor: 2),
  ]
)
