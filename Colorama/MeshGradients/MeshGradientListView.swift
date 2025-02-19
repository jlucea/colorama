//
//  ContentView.swift
//  Colorama
//
//  Created by Jaime Lucea on 15/4/24.
//

import SwiftUI

struct MeshGradientListView: View {
            
    var designs: [MeshGradientDesign] = [.apple, .forest, .candy, .vanilla]
    
    var body: some View {
        NavigationStack {
            
            List {
                Section(header: Text("Static Mesh Gradients")) {
                    ForEach(designs, id: \.self) { design in
                        NavigationLink(destination: {
                            FullScreenView(meshGradient: AnyView(CustomMeshGradient(design: design)))
                        }) {
                            CustomMeshGradient(design: design)
                                .frame(height: 120)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                        }
                    }
                }
                Section(header: Text("Dynamic Mesh Gradients")) {
                }
            }
            .navigationTitle("Colorama")
        }
    }
    
}

#Preview {
    MeshGradientListView()
}
