//
//  DiaryViewController.swift
//  Today
//
//  Created by Lorene Brocourt on 05/03/2023.
//

import UIKit

class DiaryViewController: UIViewController {

    private lazy var createEntryButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemMint
        button.setTitle("Add a note", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        button.titleLabel?.textColor = .white
        button.addTarget(self, action: #selector(didTapCreateEntryButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var invertListEntry: UIBarButtonItem = {
        let barButton = UIBarButtonItem(
            title: "invertSens",
            style: .plain,
            target: self,
            action: #selector(didTapInvertDirection))
        barButton.image = UIImage(systemName: "arrow.up.arrow.down")
        return barButton
    }()

    private lazy var addEntryButton: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 35)
        button.titleLabel?.textColor = .white
        button.backgroundColor = .systemMint
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(didTapCreateEntryButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

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

        navigationItem.rightBarButtonItem = invertListEntry

        addViews()
        setupConstraints()
    }

    @objc func didTapCreateEntryButton() {

    }

    @objc func didTapInvertDirection() { }

    private func addViews() {
        view.addSubview(addEntryButton)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            addEntryButton.widthAnchor.constraint(equalToConstant: 50),
            addEntryButton.heightAnchor.constraint(equalToConstant: 50),
            addEntryButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            addEntryButton.bottomAnchor.constraint(equalTo: self.view.layoutMarginsGuide.bottomAnchor, constant: -50)
        ])
    }

}
