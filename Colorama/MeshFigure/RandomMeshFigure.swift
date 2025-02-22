//
//  RandomMeshFigure.swift
//  Colorama
//
//  Created by Jaime Lucea on 12/2/25.
//

import SwiftUI

struct RandomMeshFigure: View {
    
    @StateObject var viewModel = RandomMeshFigureViewModel() 
    
    var body: some View {
        MeshGradient(width: viewModel.width, height: viewModel.height,
                     points: viewModel.points,
                     colors: viewModel.colors)
    }
}

final class RandomMeshFigureViewModel: ObservableObject {
    
    var width: Int
    var height: Int
    
    private var numberOfPoints: Int {
        return width * height
    }
    
    @Published var points: [SIMD2<Float>] = []
    @Published var colors: [Color] = []
    
    init(width: Int = 3, height: Int = 2) {
        
        self.width = width
        self.height = height
        
        // Generate random coordinates and colors
        for _ in 0..<numberOfPoints {
            let x: Float = Float.random(in: 0...1)
            let y: Float = Float.random(in: 0...1)
            points.append(SIMD2(x, y))
            colors.append(Color.random)
        }
    }
    
}

#Preview {
    RandomMeshFigure()
        .ignoresSafeArea()
}
