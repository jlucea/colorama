import SwiftUI

struct SwipeableView: View {
    @State private var items: [String] = ["Card 1", "Card 2", "Card 3", "Card 4", "Card 5"]
    @State private var currentIndex = 0
    @State private var dragOffset: CGFloat = 0
    @State private var rotationAngle: Double = 0

    var body: some View {
        ZStack {
            ForEach(currentIndex..<items.count, id: \.self) { item in
                
                CardView(text: items[currentIndex])
                    .offset(x: dragOffset, y: 0)
                    .rotationEffect(.degrees(rotationAngle))
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                
                                dragOffset = gesture.translation.width
                                rotationAngle = Double(gesture.translation.width / 10)
                            }
                            .onEnded { gesture in
                                withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 50, damping: 12)) {
                                    if gesture.translation.width < -100 {
                                        // Swipe Left (Next)
                                        dragOffset = -500
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                            nextCard()
                                        }
                                    } else if gesture.translation.width > 100 {
                                        // Swipe Right (Go Back)
                                        dragOffset = 500
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                            previousCard()
                                        }
                                    } else {
                                        // Reset position if not swiped far enough
                                        dragOffset = 0
                                        rotationAngle = 0
                                    }
                                }
                            }
                    )
            }
        }
    }

    private func nextCard() {
        if currentIndex < items.count - 1 {
            currentIndex += 1
        }
        resetCard()
    }

    private func previousCard() {
        if currentIndex > 0 {
            currentIndex -= 1
        }
        resetCard()
    }

    private func resetCard() {
        dragOffset = 0
        rotationAngle = 0
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeableView()
    }
}
