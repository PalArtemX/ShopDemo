//
//  Product.swift
//  ShopDemo
//
//  Created by Artem Paliutin on 11/04/2022.
//

import Foundation


struct Product: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let price: Int
}


var productList = [
    Product(name: "Green sweater", image: "sweater1", price: 55),
    Product(name: "Green sweater", image: "sweater2", price: 35),
    Product(name: "Gray sweater", image: "sweater3", price: 65),
    Product(name: "White sweater", image: "sweater4", price: 78),
    Product(name: "Green sweater", image: "sweater5", price: 99),
    Product(name: "Green sweater", image: "sweater6", price: 79),
    Product(name: "White sweater", image: "sweater7", price: 35),
    Product(name: "Red sweater", image: "sweater8", price: 29),
    Product(name: "Green sweater", image: "sweater9", price: 67)
]
