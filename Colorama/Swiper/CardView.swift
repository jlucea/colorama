//
//  CardView.swift
//  Colorama
//
//  Created by Jaime Lucea on 19/2/25.
//

import SwiftUI

struct CardView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .frame(width: 320, height: 550)
            .background(Color.random)
            .cornerRadius(20)
            .shadow(radius: 5)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 1)
            )
    }
}
