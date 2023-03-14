//
//  EntryCardCollectionView.swift
//  Today
//
//  Created by Lorene Brocourt on 05/03/2023.
//

import Foundation
import UIKit

class EntryCardCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource {
    var models: [Entry] = []

    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: .zero, collectionViewLayout: layout)
        backgroundColor = .systemBackground

        delegate = self
        dataSource = self

        self.register(EntryCardCollectionViewCell.self,
                      forCellWithReuseIdentifier: EntryCardCollectionViewCell.reuseIdentifier)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        models.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EntryCardCollectionViewCell.reuseIdentifier,
                                                            for: indexPath) as? EntryCardCollectionViewCell else {
            return UICollectionViewCell()
        }
        if indexPath.row < models.count {
            let model = models[indexPath.row]
            //                cell.configure(model: model)
        }
        return cell
    }
}
