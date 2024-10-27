//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Piyapong Ukoad on 22/9/2567 BE.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    } //: Loop
                } //: Section
            } //: LazyHGrid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        } //: ScrollView
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CategoryGridView()
        .padding()
        .backgroundStyle(colorBackground)
}
