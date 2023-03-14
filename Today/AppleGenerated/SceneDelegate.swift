//
//  SceneDelegate.swift
//  Today
//
//  Created by Lorene Brocourt on 05/03/2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: UIScreen.main.bounds)
        let navigation = TabBarViewController()
        self.window?.rootViewController = navigation
        window?.makeKeyAndVisible()
        window?.windowScene = windowScene
    }
}
