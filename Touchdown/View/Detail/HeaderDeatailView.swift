//
//  HeaderDeatailView.swift
//  Touchdown
//
//  Created by Piyapong Ukoad on 23/9/2567 BE.
//

import SwiftUI

struct HeaderDeatailView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
        .foregroundStyle(Color.white)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeaderDeatailView()
        .environmentObject(Shop())
        .padding()
        .background(Color.gray)
}
