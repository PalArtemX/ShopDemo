//
//  CartView.swift
//  ShopDemo
//
//  Created by Artem Paliutin on 11/04/2022.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        ScrollView {
            Text("Your cart is empty")
            
            
                .navigationTitle("My Cart")
                .padding(.top)
        }
    }
}










struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
