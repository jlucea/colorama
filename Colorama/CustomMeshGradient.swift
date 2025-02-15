
import SwiftUI

enum MeshGradientDesign {
    case apple
    case candy
    case forest
}

struct CustomMeshGradient: View {
    
    var design: MeshGradientDesign
    
    var body: some View {
        switch design {
            case .apple: return AnyView(AppleMeshGradient())
            case .candy: return AnyView(CandyMeshGradient())
            case .forest: return AnyView(ForestMeshGradient())
        }
    }
    
}

struct AppleMeshGradient: View {
    var body: some View {
        MeshGradient(width: 3, height: 3, points: [
            .init(0, 0), .init(0.5, 0), .init(1, 0),
            .init(0, 0.5), .init(0.5, 0.5), .init(1, 0.5),
            .init(0, 1), .init(0.5, 1), .init(1, 1)
        ], colors: [
            .pink, .purple, .indigo,
            .mint, .teal, .blue,
            .teal, .green, .mint
        ])
    }
}

struct CandyMeshGradient: View {
    var body: some View {
        MeshGradient(
            width: 3,
            height: 3,
            points: [
                .init(0.00, 0.00),.init(0.50, 0.00),.init(1.00, 0.00),
                .init(0.00, 0.59),.init(0.67, 0.23),.init(1, 0.36),
                .init(0.00, 1.00),.init(0.45, 1.00),.init(1.00, 1.00)
            ],
            colors: [
                Color(hex: "#69C4DC")!,Color(hex: "#65BEDD")!,Color(hex: "#0A83FF")!,
                Color(hex: "#EB59E6")!,Color(hex: "#69C4DC")!,Color(hex: "#262FF8")!,
                Color(hex: "#902FD3")!,Color(hex: "#F8D7DE")!,Color(hex: "#FFFFFF")!
            ]     ,
            smoothsColors: true
        )
    }
}

struct ForestMeshGradient: View {
    
    var body: some View {
        MeshGradient(
            width: 4,
            height: 3,
            points: [
                    .init(0.00, 0.00),.init(0.33, 0.00),.init(0.57, 0.00),.init(1.00, 0.00),
        .init(0.00, 0.35),.init(0.59, 0.43),.init(0.80, 0.20),.init(1.00, 0.50),
        .init(0.00, 1.00),.init(0.33, 1.00),.init(0.66, 1.00),.init(1.00, 1.00)
                    ],
            colors: [
                   Color(hex: "#3B9353")!,Color(hex: "#3B9353")!,Color(hex: "#3B9353")!,Color(hex: "#7ED9B7")!,
        Color(hex: "#4CD94F")!,Color(hex: "#428936")!,Color(hex: "#38733A")!,Color(hex: "#31D74A")!,
        Color(hex: "#0A110B")!,Color(hex: "#91F19D")!,Color(hex: "#D1EBCD")!,Color(hex: "#498369")!
                    ]     ,
            smoothsColors: false
        )
    }
    
}

//MARK: - Previews

#Preview ("Apple") {
    CustomMeshGradient(design: .apple)
        .ignoresSafeArea()
}

#Preview ("Candy") {
    CustomMeshGradient(design: .candy)
        .ignoresSafeArea()
}

#Preview ("Forest") {
    CustomMeshGradient(design: .forest)
        .ignoresSafeArea()
}
