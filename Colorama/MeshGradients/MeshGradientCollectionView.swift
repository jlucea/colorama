//
//  MeshGradientView.swift
//  Colorama
//
//  Created by Jaime Lucea on 19/2/25.
//

import SwiftUI

struct MeshGradientCollectionView: View {
    
    let designs: [MeshGradientDesign] = [.apple, .forest, .candy]
    @State var index = 0
    
    var body: some View {
        CustomMeshGradient(design: designs[index])
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden()
            .ignoresSafeArea()
            .gesture(
                DragGesture().onChanged { gesture in
                    if gesture.translation.width < -120 {
                        // Swipe right-to-left (next)
                        if index < designs.count - 1 {
                            index += 1
                        }
                    } else if gesture.translation.width > 120 {
                        if index > 0 {
                            index -= 1
                        }
                    }
                }
            )
    }
}

#Preview {
    MeshGradientCollectionView()
}
