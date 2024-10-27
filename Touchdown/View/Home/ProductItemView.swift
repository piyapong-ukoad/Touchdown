//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Piyapong Ukoad on 23/9/2567 BE.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - Properties
    let product: Product
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            // Image
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //: ZStack
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            // Name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            // Price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundStyle(Color.gray)
        }
    }
}

#Preview(traits: .fixedLayout(width: 200, height: 300)) {
    ProductItemView(product: products[1])
        .padding()
        .background(colorBackground)
}
