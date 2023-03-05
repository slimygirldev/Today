//
//  Entry.swift
//  Today
//
//  Created by Lorene Brocourt on 05/03/2023.
//

import Foundation
import UIKit

struct Entry {
    var id: UUID
    var date: Date
    var title: String
    var entry: String
    var mood: Int
    var image: UIImage?
}
