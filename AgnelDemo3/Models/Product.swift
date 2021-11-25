//
//  Product.swift
//  AgnelDemo3
//
//  Created by Neosoft on 23/11/21.
//

import Foundation

class Product{
    var name: String
    var price: Double
    
    init(name: String , price: Double){
        self.name = name
        self.price = price
    }
}

// MARK: - Product
struct ProductModel: Codable {
    let id, productCategoryID: Int
    let name, producer, datumDescription: String
    let cost, rating, viewCount: Int
    let created, modified: String
    let productImages: String

    enum CodingKeys: String, CodingKey {
        case id
        case productCategoryID = "product_category_id"
        case name, producer
        case datumDescription = "description"
        case cost, rating
        case viewCount = "view_count"
        case created, modified
        case productImages = "product_images"
    }
}

