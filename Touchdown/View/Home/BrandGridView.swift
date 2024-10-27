//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Piyapong Ukoad on 23/9/2567 BE.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - Properties
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                } //: Loop
            } //: LazyHGrid
            .frame(height: 200)
            .padding(15)
        } //: ScrollView
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    BrandGridView()
        .background(colorBackground)
}
