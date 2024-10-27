//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Piyapong Ukoad on 22/9/2567 BE.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - Properties
    let player: Player
    // MARK: - Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    FeaturedItemView(player: players[1])
        .padding()
        .background(colorBackground)
}
