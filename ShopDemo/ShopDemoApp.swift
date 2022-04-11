//
//  ShopDemoApp.swift
//  ShopDemo
//
//  Created by Artem Paliutin on 11/04/2022.
//

import SwiftUI

@main
struct ShopDemoApp: App {
    
    @StateObject var cartVM = CartViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(cartVM)
        }
    }
}
