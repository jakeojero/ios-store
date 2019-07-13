//
//  DataService.swift
//  merch-shop
//
//  Created by Jake Ojero on 2019-07-13.
//  Copyright © 2019 jakeojero.me. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() -> Array<Category> {
        return categories
    }
}
