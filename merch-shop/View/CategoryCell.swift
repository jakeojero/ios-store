//
//  CategoryCell.swift
//  merch-shop
//
//  Created by Jake Ojero on 2019-07-13.
//  Copyright © 2019 jakeojero.me. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateCell(_ category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
