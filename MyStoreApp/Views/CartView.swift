//
//  CartView.swift
//  MyStoreApp
//
//  Created by Satyajit Bhol on 01/04/25.
//

import SwiftUI

struct CartView: View {
    @ObservedObject var cart = Cart()

    var body: some View {
        NavigationView {
            List {
                ForEach(cart.items) { item in
                    HStack {
                        AsyncImage(url: URL(string: item.image))
                            .frame(width: 50, height: 50)
                        VStack(alignment: .leading) {
                            Text(item.title).font(.headline)
                            Text("$\(item.price, specifier: "%.2f")")
                                .foregroundColor(.green)
                        }
                    }
                }
            }
            .navigationTitle("Cart")
        }
    }
}
