//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Piyapong Ukoad on 22/9/2567 BE.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - Properties
    let category: Category
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundStyle(Color.gray)
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundStyle(Color.gray)
                Spacer()
            } //: HStack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }) //: Button
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CategoryItemView(category: categories[1])
        .padding()
        .background(colorBackground)
}
