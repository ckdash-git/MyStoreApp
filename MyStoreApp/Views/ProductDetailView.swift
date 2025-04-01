//
//  ProductDetailView.swift
//  MyStoreApp
//
//  Created by Satyajit Bhol on 01/04/25.
//

import SwiftUI

struct ProductDetailView: View {
    let product: Product

    var body: some View {
        VStack {
            AsyncImage(url: URL(string: product.image))
                .frame(width: 200, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Text(product.title)
                .font(.title)
                .padding()
            Text(product.description)
                .padding()
            Text("$\(product.price, specifier: "%.2f")")
                .font(.headline)
                .foregroundColor(.green)
            Spacer()
        }
        .padding()
        .navigationTitle("Details")
    }
}


