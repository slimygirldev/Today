//
//  TabBarViewController.swift
//  Today
//
//  Created by Lorene Brocourt on 05/03/2023.
//

import Foundation
import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground

        self.tabBar.backgroundColor = .systemBackground
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.systemBlue], for: .selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.gray], for: .normal)
        setupVCs()
    }

    func setupVCs() {
        viewControllers = [
            UINavigationController(rootViewController: DiaryViewController()),
            UINavigationController(rootViewController: ProfilViewController())
        ]
        viewControllers?.forEach {
            $0.edgesForExtendedLayout = []
        }
    }
}
