//
//  SceneDelegate.swift
//  Challenge1Flags
//
//  Created by Cleís Aurora Pereira on 24/06/22.
//

import UIKit

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowsScene = (scene as? UIWindowScene) {
            window = UIWindow(windowScene: windowsScene)
            window?.makeKeyAndVisible()
            window?.rootViewController = FlagsViewController()
            window?.rootViewController = UINavigationController(rootViewController: FlagsViewController())

            window?.makeKeyAndVisible()
        }
    }
}

