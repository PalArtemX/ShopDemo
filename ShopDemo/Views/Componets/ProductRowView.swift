//
//  ProductRowView.swift
//  ShopDemo
//
//  Created by Artem Paliutin on 11/04/2022.
//

import SwiftUI

struct ProductRowView: View {
    @EnvironmentObject var cartVM: CartViewModel
    var product: Product
    
    var body: some View {
        HStack {
            // MARK: - Image
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            
            // MARK: - Price
            VStack(alignment: .leading) {
                Text(product.name)
                    .font(.headline)
                
                Text("$\(product.price)")
                    .font(.subheadline)
            }
            
            Spacer()
            
            // MARK: - Trash
            Image(systemName: "trash.square.fill")
                .font(.title)
                .symbolRenderingMode(.hierarchical)
                .foregroundColor(.red)
                .onTapGesture {
                    withAnimation(.spring()) {
                        cartVM.removeFromCart(product: product)
                    }
                }
            
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}










struct ProductRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProductRowView(product: previewProduct)
                .previewLayout(.sizeThatFits)
                .environmentObject(CartViewModel())
            ProductRowView(product: previewProduct)
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .environmentObject(CartViewModel())
        }
        .padding()
    }
}
