//
//  ContentView.swift
//  Colorama
//
//  Created by Jaime Lucea on 15/4/24.
//

import SwiftUI

struct ContentView: View {
        
    @State var colors: [Color] = (1...20).map { _ in ColorGenerator.generateColor() }
    
    var body: some View {
        ZStack {
            ForEach(colors, id: \.self) { color in
                SwipeableView(color: color)
            }
        }
    }
    
}

struct SwipeableView: View {
    
    @State var color: Color
    
    var body: some View {
        VStack {
            color
        }
        .ignoresSafeArea()
    }
    
}

#Preview {
    ContentView()
}
