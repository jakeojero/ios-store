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
    
    private let hats = [
        Product(title: "Logo Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Logo Beanie Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Hat White", price: "$18", imageName: "hat03.png"),
        Product(title: "Snapback white", price: "$35", imageName: "hat04.png")
    ]
    
    private let shirts = [
        Product(title: "Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Shirt White", price: "$18", imageName: "shirt02.png"),
        Product(title: "Logo Graphic", price: "$19", imageName: "shirt03.png"),
        Product(title: "Test Shirt", price: "$18", imageName: "shirt04.png"),
        Product(title: "Test Shirt2", price: "$39", imageName: "shirt05.png"),
    ]
    
    private let hoodies = [
        Product(title: "Hoodie Grey", price: "$67", imageName: "hoodie01.png"),
        Product(title: "Hoodie Red", price: "$18", imageName: "hoodie02.png"),
        Product(title: "Hoodie Grey", price: "$18", imageName: "hoodie03.png"),
        Product(title: "Hoodie Black", price: "$18", imageName: "hoodie04.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> Array<Category> {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> Array<Product> {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
}
