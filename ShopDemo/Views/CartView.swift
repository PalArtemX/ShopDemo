//
//  CartView.swift
//  ShopDemo
//
//  Created by Artem Paliutin on 11/04/2022.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartVM: CartViewModel
    
    var body: some View {
        ScrollView {
            if cartVM.products.count > 0 {
                ForEach(cartVM.products, id: \.id) { product in
                    ProductRowView(product: product)
                }
                
                HStack {
                    Spacer()
                    Image(systemName: "dollarsign.square")
                        .symbolRenderingMode(.hierarchical)
                    Text("\(cartVM.total)")
                }
                .font(.headline)
                .padding()
                
                PaymentButtonView(action: {})
                    .padding()
            } else {
                Text("Your cart is empty")
            }
                
        }
        .navigationTitle("My Cart")
        .padding(.top)
    }
}










struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartViewModel())
    }
}
