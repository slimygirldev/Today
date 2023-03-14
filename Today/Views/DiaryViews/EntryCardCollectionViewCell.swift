//
//  EntryCardCollectionViewCell.swift
//  Today
//
//  Created by Lorene Brocourt on 05/03/2023.
//

import Foundation
import UIKit
import SwiftUI

class EntryCardCollectionViewCell: UICollectionViewCell {
    static let reuseIdentifier = "EntryCardCollectionViewCell"

//MARK: - Labels

    private lazy var entryTitle: UITextField = {
        let entryTitle = UITextField()
        entryTitle.font = .systemFont(ofSize: 20)
        entryTitle.placeholder = "Enter Title..."
        return entryTitle
    }()

    private lazy var entryText: UITextField = {
        let entryText = UITextField()
        entryText.font = .systemFont(ofSize: 12)
        entryText.placeholder = "Add Note..."
        return entryText
    }()

//MARK: - Image

    private lazy var entryMood: UIImage = {
        let entryMood = UIImage()
        return entryMood
    }()

//MARK: - Buttons

    private lazy var saveButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemMint
        return button
    }()
}


//MARK: - SwiftUI Preview
//struct EntryCardCollectionViewCell_Representable: UIViewRepresentable {
//    let model: Entry
//
//    func makeUIView(context _: Context) -> EntryCardCollectionViewCell {
//        let cell = EntryCardCollectionViewCell()
//        cell.setContentCompressionResistancePriority(UILayoutPriority(749), for: .vertical)
//        return cell
//    }
//
//    func updateUIView(_ uiView: EntryCardCollectionViewCell,
//                      context _: Context) {
////        uiView.configure(model: model)
//    }
//}
//
//struct EntryCardCollectionViewCell_Preview: PreviewProvider {
//    static var previews: some View {
//        Group {
//            EntryCardCollectionViewCell_Representable(model: Entry(id: .init(uuidString: "1234568KJGU0999900")!,
//                                                                   date: .init(timeIntervalSince1970: .zero),
//                                                                   title: "Sunny Monday",
//                                                                   entry: "I am feeling good !",
//                                                                mood: 1))
//        }
//        .frame(width: UIScreen.main.bounds.width,
//               height: 200)
//        .padding()
//        .previewLayout(.sizeThatFits)
//    }
//}
