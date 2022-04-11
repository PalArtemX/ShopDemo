//
//  PaymentButtonView.swift
//  ShopDemo
//
//  Created by Artem Paliutin on 11/04/2022.
//

import SwiftUI
import PassKit

struct PaymentButtonView: View {
    var action: () -> ()
    
    var body: some View {
        VStack {
            Representable(action: action)
                .frame(minWidth: 100, maxWidth: 400)
                .frame(height: 45)
                .frame(maxWidth: .infinity)
                
        }
    }
}

// MARK: - Extension PaymentButton
extension PaymentButtonView {
    struct Representable: UIViewRepresentable {
        var action: () -> Void
        
        func makeCoordinator() -> Coordinator {
            Coordinator(action: action)
        }
        
        func makeUIView(context: Context) -> some UIView {
            context.coordinator.button
        }
        
        func updateUIView(_ uiView: UIViewType, context: Context) {
            context.coordinator.action = action
        }
    }
    
    class Coordinator: NSObject {
        var action: () -> Void
        var button = PKPaymentButton(paymentButtonType: .checkout, paymentButtonStyle: .automatic)
        
        init(action: @escaping () -> Void) {
            self.action = action
            super.init()
            
            button.addTarget(self, action: #selector(callback(_:)), for: .touchUpInside)
        }
        
        @objc
        func callback(_ sender: Any) {
            action()
        }
    }
}










struct PaymentButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PaymentButtonView(action: { })
                .previewLayout(.sizeThatFits)
            PaymentButtonView(action: { })
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
        .padding()
    }
}
