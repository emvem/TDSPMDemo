// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TDSPM",
    products: [
        .library(
            name: "TDSPM",
            targets: ["TDSPM"]),
    ],
    dependencies: [
        .package(url: "https://github.com/RedMadRobot/input-mask-ios", from: "6.0.0"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.6.2"),
        .package(url: "https://github.com/konkab/AlamofireNetworkActivityLogger.git", from: "3.4.0"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON", from: "5.0.0"),
        .package(url: "https://github.com/auth0/JWTDecode.swift", from: "2.0.0"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk", from: "8.0.0"),
        .package(url: "https://github.com/facebook/facebook-ios-sdk", exact: "15.1.0"),
        .package(url: "https://github.com/SwiftKickMobile/SwiftMessages.git", from: "9.0.0"),
        .package(url: "https://github.com/c-villain/YandexMapsMobile", from: "4.1.0"),
        .package(url: "https://github.com/googleanalytics/google-tag-manager-ios-sdk", from: "7.0.0"),
        .package(url: "https://github.com/socketio/socket.io-client-swift", exact: "16.0.1"),
        .package(url: "https://github.com/youtube/youtube-ios-player-helper.git", from: "1.0.0"),
        .package(url: "https://github.com/onevcat/Kingfisher", from: "7.0.0"),
        .package(url: "https://github.com/yonat/MultiSlider", from: "1.0.0"),
        .package(url: "https://github.com/mac-cain13/R.swift.git", from: "7.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TDSPM",
            dependencies: [.product(name: "InputMask", package: "input-mask-ios"),
                           .product(name: "Alamofire", package: "Alamofire"),
                           .product(name: "AlamofireNetworkActivityLogger", package: "AlamofireNetworkActivityLogger"),
                           .product(name: "SwiftyJSON", package: "SwiftyJSON"),
                           .product(name: "FacebookCore", package: "facebook-ios-sdk"),
                           .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
                           .product(name: "FirebaseRemoteConfig", package: "firebase-ios-sdk"),
                           .product(name: "FirebaseDynamicLinks", package: "firebase-ios-sdk"),
                           .product(name: "FirebaseMessaging", package: "firebase-ios-sdk"),
                           .product(name: "FirebaseCrashlytics", package: "firebase-ios-sdk"),
                           .product(name: "GoogleTagManager", package: "google-tag-manager-ios-sdk"),
                           .product(name: "JWTDecode", package: "JWTDecode.swift"),
                           .product(name: "Kingfisher", package: "Kingfisher"),
                           .product(name: "MultiSlider", package: "MultiSlider"),
                           .product(name: "SocketIO", package: "socket.io-client-swift"),
                           .product(name: "SwiftMessages", package: "SwiftMessages"),
                           .product(name: "YandexMapsMobile", package: "YandexMapsMobile"),
                           .product(name: "YouTubeiOSPlayerHelper", package: "youtube-ios-player-helper")
                           ]),
        .testTarget(
            name: "TDSPMTests",
            dependencies: ["TDSPM"]),
    ]
)
