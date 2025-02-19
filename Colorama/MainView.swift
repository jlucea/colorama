//
//  ContentView.swift
//  Colorama
//
//  Created by Jaime Lucea on 15/4/24.
//

import SwiftUI

struct MainView: View {
            
    var body: some View {
        NavigationStack {
            VStack {
                Text("Colorama")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.vertical, 40)
                                
                VStack(spacing: 30) {
                    
                    NavigationLink(destination: {
                        MeshGradientCollectionView()
                    }) {
                        CustomMeshGradient(design: .forest)
                            .frame(height: 180)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .padding(.horizontal, 40)
                    }
                    
                    NavigationLink(destination: {
                        CustomMeshGradient(design: .candy)
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarBackButtonHidden()
                            .ignoresSafeArea(.all)
                        
                    }) {
                        CustomMeshGradient(design: .candy)
                            .frame(height: 180)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .padding(.horizontal, 40)
                    }
                    
                    Spacer()
                }
            }
        }
    }
    
}

#Preview {
    MainView()
}
