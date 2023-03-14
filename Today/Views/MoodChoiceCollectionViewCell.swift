//
//  MoodChoiceCollectionViewCell.swift
//  Today
//
//  Created by Lorène BROCOURT on 13/03/2023.
//

import Foundation
import UIKit

class MoodChoiceCollectionViewCell: UICollectionViewCell {
    static let reuseIdentifier = "MoodChoiceCollectionViewCell"

    private var selectedMood: String?

    private lazy var moodVeryGood: UIButton =  {
        let button = UIButton()
        button.layer.name = "veryGood"
        if self.isSelected {
            button.setBackgroundImage(UIImage(named: "veryGood"), for: UIControl.State.selected)
        } else {
            button.setBackgroundImage(UIImage(named: "veryGood"), for: UIControl.State.normal)
        }
        button.addTarget(self, action: #selector(moodSelected), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var moodGood: UIButton =  {
        let button = UIButton()
        button.layer.name = "good"
        if self.isSelected {
            button.setBackgroundImage(UIImage(named: "good"), for: UIControl.State.selected)
        } else {
            button.setBackgroundImage(UIImage(named: "good"), for: UIControl.State.normal)
        }
        button.addTarget(self, action: #selector(moodSelected), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var moodMeh: UIButton =  {
        let button = UIButton()
        button.layer.name = "meh"
        if self.isSelected {
            button.setBackgroundImage(UIImage(named: "meh"), for: UIControl.State.selected)
        } else {
            button.setBackgroundImage(UIImage(named: "meh"), for: UIControl.State.normal)
        }
        button.addTarget(self, action: #selector(moodSelected), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var moodSad: UIButton =  {
        let button = UIButton()
        button.layer.name = "sad"
        if self.isSelected {
            button.setBackgroundImage(UIImage(named: "sad"), for: UIControl.State.selected)
        } else {
            button.setBackgroundImage(UIImage(named: "sad"), for: UIControl.State.normal)
        }
        button.addTarget(self, action: #selector(moodSelected), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var moodAngry: UIButton =  {
        let button = UIButton()
        button.layer.name = "angry"
        if self.isSelected {
            button.setBackgroundImage(UIImage(named: "angry"), for: UIControl.State.selected)
        } else {
            button.setBackgroundImage(UIImage(named: "angry"), for: UIControl.State.normal)
        }
        button.addTarget(self, action: #selector(moodSelected), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var mainStackView: UIStackView = {
        let mainStackView = UIStackView()
        mainStackView.distribution = .fillEqually
        mainStackView.alignment = .center
        mainStackView.spacing = 5
        mainStackView.backgroundColor = .white
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        return mainStackView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.layer.cornerRadius = 25
        contentView.layer.masksToBounds = true

        addViews()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc func moodSelected() {
        selectedMood = self.layer.name
    }

    func addViews() {
        addSubview(mainStackView)
        mainStackView.addArrangedSubview(moodVeryGood)
        mainStackView.addArrangedSubview(moodGood)
        mainStackView.addArrangedSubview(moodMeh)
        mainStackView.addArrangedSubview(moodSad)
        mainStackView.addArrangedSubview(moodAngry)
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: topAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            mainStackView.heightAnchor.constraint(equalToConstant: 42)
        ])
    }
}
