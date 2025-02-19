//
//  FullScreenMeshGradientView.swift
//  Colorama
//
//  Created by Jaime Lucea on 19/2/25.
//

import SwiftUI

struct FullScreenView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var meshGradient: AnyView
    
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
    FullScreenView(meshGradient: AnyView(CustomMeshGradient(design: .forest)))
}
