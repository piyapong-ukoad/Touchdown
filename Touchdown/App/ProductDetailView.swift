//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Piyapong Ukoad on 23/9/2567 BE.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // Navigation Bar
            NavigationBarDetailView()
                .padding(.horizontal)
            // Header
            HeaderDeatailView()
                .padding(.horizontal)
            // Detail Top Part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            // Detail Bottom Part
            VStack(alignment: .center, spacing: 0) {
                // Ratings + Sizes
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                // Description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(Color.gray)
                        .multilineTextAlignment(.leading)
                } //: ScrollView
                // Quanity + Favourite
                QuantityFavouritsDetailView()
                    .padding(.vertical, 10)
                // Add to Cart
                AddToCartDetailView()
                    .padding(.vertical, 10)
            } //: VStack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
                    .ignoresSafeArea()
            )
        } //: VStack
        .zIndex(0)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
        )
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 612)) {
    ProductDetailView()
        .environmentObject(Shop())
}
