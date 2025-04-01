//
//  ContentView.swift
//  MyStoreApp
//
//  Created by Chandan Kumar Dash on 01/04/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cart = Cart()

    var body: some View {
        TabView {
            ProductGridView()
                .tabItem {
                    Label("Shop", systemImage: "cart")
                }
            
            CartView(cart: cart)
                .tabItem {
                    Label("Cart", systemImage: "heart")
                }
        }
    }
}
