//
//  FullScreenMeshGradientView.swift
//  Colorama
//
//  Created by Jaime Lucea on 19/2/25.
//

import SwiftUI

struct FullScreenMeshGradientView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    let meshGradient: CustomMeshGradient
    
    var body: some View {
        meshGradient
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden()
            .ignoresSafeArea()
            .onTapGesture {
                dismiss()
            }
    }
}

#Preview {
    FullScreenMeshGradientView(meshGradient: CustomMeshGradient(design: .forest))
}
