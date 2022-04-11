//
//  CartButtonView.swift
//  ShopDemo
//
//  Created by Artem Paliutin on 11/04/2022.
//

import SwiftUI

struct CartButtonView: View {
    var numberOfProducts: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "cart")
                .foregroundColor(.green)

            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2)
                    .fontWeight(.black)
                    .bold()
                    .padding(3)
                    .background(.ultraThinMaterial)
                    .cornerRadius(5)
                    .offset(x: 10, y: -10)
                    
            }
        }
    }
}










struct CartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CartButtonView(numberOfProducts: 1)
                .previewLayout(.sizeThatFits)
            CartButtonView(numberOfProducts: 10)
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
        .padding()
    }
}
