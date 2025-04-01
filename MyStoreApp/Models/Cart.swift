//
//  Cart.swift
//  MyStoreApp
//
//  Created by Satyajit Bhol on 01/04/25.
//

import Foundation

class Cart: ObservableObject {
    @Published var items: [Product] = []

    func addItem(_ product: Product) {
        if !items.contains(where: { $0.id == product.id }) {
            items.append(product)
        }
    }

    func removeItem(_ product: Product) {
        items.removeAll { $0.id == product.id }
    }
}
