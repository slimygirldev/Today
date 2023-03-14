//
//  CreateEntryCollectionView.swift
//  Today
//
//  Created by Lorène BROCOURT on 13/03/2023.
//

import Foundation
import UIKit

class CreateEntryCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource {

    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: .zero, collectionViewLayout: layout)
        backgroundColor = .systemBackground

        delegate = self
        dataSource = self

        self.register(MoodChoiceCollectionViewCell.self,
                      forCellWithReuseIdentifier: MoodChoiceCollectionViewCell.reuseIdentifier)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MoodChoiceCollectionViewCell.reuseIdentifier,
                                                            for: indexPath) as? MoodChoiceCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
}
