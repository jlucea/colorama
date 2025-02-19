//
//  ContentView.swift
//  Colorama
//
//  Created by Jaime Lucea on 15/4/24.
//

import SwiftUI

struct MeshGradientListView: View {
            
    var designs: [MeshGradientDesign] = [.apple, .forest, .candy]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(designs, id: \.self) { design in
                    NavigationLink(destination: {
                        FullScreenMeshGradientView(meshGradient: CustomMeshGradient(design: design))
                        
                    }) {
                        VStack (alignment: .leading) {
                            CustomMeshGradient(design: design)
                                .frame(height: 120)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                         
                            Text("Description goes here")
                                .font(.caption)
                                .foregroundStyle(.gray)
                                .padding(.leading, 6)
                        }
                    }
                    .padding(.horizontal, 30)
                    .padding(.vertical, 8)
                }
            }
        }
    }
    
}

#Preview {
    MeshGradientListView()
}
