//
//  DiaryViewController.swift
//  Today
//
//  Created by Lorene Brocourt on 05/03/2023.
//

import UIKit

class DiaryViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
        tabBarItem.image = UIImage(systemName: "book.fill")
        tabBarItem.title = "Diary"
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Diary"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
    }

}
