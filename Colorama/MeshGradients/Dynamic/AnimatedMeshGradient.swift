
import SwiftUI

struct AnimatedMeshGradient: View {
    
    @State var appear = false
    
    var body: some View {
        MeshGradient(
            width: 3,
            height: 4,
            points: [
                [0.00, 0.00],[0.50, 0.00],[1.00, 0.00],
                [0.00, 0.33], appear ? [0.57, 0.16] : [0.19, 0.33], [1.00, 0.33],
                [0.00, 0.67], appear ? [0.50, 0.53] : [0.25, 0.65], [1.00, 0.67],
                [0.00, 1.00],[0.50, 1.00],[1.00, 1.00]
            ],
            colors: [
                .teal, appear ? .purple : .indigo, appear ? .teal : .blue,
                .mint, .indigo, appear ? .teal : .white,
                .white, .mint, appear ? .purple : .teal,
                appear ? .cyan : .gray, .indigo, .blue
            ]     ,
            smoothsColors: true
        )
        .onAppear {
            withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                self.appear.toggle()
            }
        }
    }
}

#Preview {
    AnimatedMeshGradient()
        .ignoresSafeArea()
}
