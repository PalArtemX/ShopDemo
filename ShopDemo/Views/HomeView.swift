//
//  HomeView.swift
//  ShopDemo
//
//  Created by Artem Paliutin on 11/04/2022.
//

import SwiftUI

struct HomeView: View {
    let columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    @EnvironmentObject var cartVM: CartViewModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                // MARK: - Product
                LazyVGrid(columns: columns) {
                    ForEach(productList, id: \.id) { product in
                        ProductCartView(product: product)
                    }
                }
                .padding()
            }
            // MARK: - toolbar
            .toolbar {
                NavigationLink {
                    CartView()
                } label: {
                    CartButtonView(numberOfProducts: 1)
                }

            }
            .navigationTitle("Shop")
        }
    }
}










struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(CartViewModel())
    }
}
