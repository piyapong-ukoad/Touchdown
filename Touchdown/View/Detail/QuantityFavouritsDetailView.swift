//
//  QuantityFavouritsDetailView.swift
//  Touchdown
//
//  Created by Piyapong Ukoad on 23/9/2567 BE.
//

import SwiftUI

struct QuantityFavouritsDetailView: View {
    // MARK: - Properties
    @State private var counter: Int = 0
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button(action: {
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minHeight: 36)
            Button(action: {
                if counter < 100 {
                    feedback.impactOccurred()
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            Spacer()
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundStyle(Color.pink)
            })
        } //: HStack
        .font(.system(.title, design: .rounded))
        .foregroundStyle(Color.black)
        .imageScale(.large)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    QuantityFavouritsDetailView()
        .padding()
}
