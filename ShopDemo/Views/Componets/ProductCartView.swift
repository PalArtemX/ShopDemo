//
//  ProductCartView.swift
//  ShopDemo
//
//  Created by Artem Paliutin on 11/04/2022.
//

import SwiftUI

struct ProductCartView: View {
    
    let product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                // MARK: - Image
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .frame(width: 180)
                
                // MARK: - Text
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    
                    Text("\(product.price)$")
                        .font(.caption)
                        .padding(.bottom, 5)
                        
                }
                .frame(width: 180)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            
            Button {
                //
            } label: {
                Image(systemName: "plus.circle")
                    .symbolRenderingMode(.hierarchical)
                    .font(.title)
                    .padding(3)
            }

        }
    }
}










struct ProductCartView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProductCartView(product: previewProduct)
                .previewLayout(.sizeThatFits)
            ProductCartView(product: previewProduct)
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
        .padding()
    }
}
