//
//  CartViewModel.swift
//  ShopDemo
//
//  Created by Artem Paliutin on 11/04/2022.
//

import Foundation


class CartViewModel: ObservableObject {
    @Published var products: [Product] = []
    @Published var total = 0
    
    let paymentHandler = PaymentHandler()
    @Published var paymentSuccess = false
    
    // MARK: - Functions
    
    // MARK: addToCart
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    // MARK: removeFromCart
    func removeFromCart(product: Product) {
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
    
    // MARK: pay
    func pay() {
        paymentHandler.startPayment(products: products, total: total) { success in
            self.paymentSuccess = success
            self.products = []
            self.total = 0
        }
    }
}
