
import SwiftUI

extension Color {
    // Initialize SwiftUI Color from hex string
    init?(hex: String) {
        guard let platformColor = PlatformColor(hex: hex) else {
            return nil
        }
        self.init(platformColor: platformColor)
    }

    // Initialize SwiftUI Color from PlatformColor
    init(platformColor: PlatformColor) {
        #if os(macOS)
        self.init(nsColor: platformColor)
        #else
        self.init(uiColor: platformColor)
        #endif
    }

    // Convert SwiftUI Color to hex string
    func toHexString(includeAlpha: Bool = false) -> String? {
        #if os(macOS)
        return NSColor(self).toHexString(includeAlpha: includeAlpha)
        #else
        return UIColor(self).toHexString(includeAlpha: includeAlpha)
        #endif
    }
    
    var luminance: CGFloat {
        #if os(macOS)
        return NSColor(self).luminance
        #else
        return UIColor(self).luminance
        #endif
    }
    
    // Computed property to get adapted text color based on luminance
    var adaptedTextColor: Color {
        #if os(macOS)
        let adaptedColor = NSColor(self).adaptedTextColor
        return Color(nsColor: adaptedColor)
        #else
        let adaptedColor = UIColor(self).adaptedTextColor
        return Color(uiColor: adaptedColor)
        #endif
    }
    
    // Generate a random color
    static var random: Color {
        let red = Double.random(in: 0...1)
        let green = Double.random(in: 0...1)
        let blue = Double.random(in: 0...1)
        return Color.init(red: red, green: green, blue: blue)
    }
    
}
