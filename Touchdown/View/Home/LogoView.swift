//
//  LogoView.swift
//  Touchdown
//
//  Created by Piyapong Ukoad on 22/9/2567 BE.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(Color.black)
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(Color.black)
        } //: HStack
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    LogoView()
        .padding()
}
