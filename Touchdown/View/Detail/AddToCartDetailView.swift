//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Piyapong Ukoad on 23/9/2567 BE.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    // MARK: - BOdy
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(Color.white)
            Spacer()
        }) //: Button
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    AddToCartDetailView()
        .environmentObject(Shop())
        .padding()
}
