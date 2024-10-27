//
//  FooterView.swift
//  Touchdown
//
//  Created by Piyapong Ukoad on 22/9/2567 BE.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundStyle(Color.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundStyle(Color.gray)
                .layoutPriority(0)
            Text("Copyright © Piyapong Ukoad\nAll right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(Color.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        } //: VStack
        .padding()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    FooterView()
        .background(colorBackground)
}
