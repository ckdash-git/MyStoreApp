//
//  ProductGridView.swift
//  MyStoreApp
//
//  Created by Satyajit Bhol on 01/04/25.
//

import SwiftUI

struct ProductGridView: View {
    @ObservedObject var viewModel = ProductViewModel()

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(viewModel.products) { product in
                        NavigationLink(destination: ProductDetailView(product: product)) {
                            VStack {
                                AsyncImage(url: URL(string: product.image))
                                    .frame(width: 100, height: 100)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                Text(product.title)
                                    .font(.headline)
                                    .lineLimit(1)
                                Text("$\(product.price, specifier: "%.2f")")
                                    .foregroundColor(.green)
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 3)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Products")
        }
    }
}
