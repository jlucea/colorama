//
//  ColorGenerator.swift
//  Colorama
//
//  Created by Jaime Lucea on 15/4/24.
//

import Foundation
import SwiftUI

public class ColorGenerator: ObservableObject {
                
    public static func generateColor() -> Color {
        
        let red = Double.random(in: 0...1)
        let green = Double.random(in: 0...1)
        let blue = Double.random(in: 0...1)
        
        return Color.init(red: red, green: green, blue: blue)
    }
    
}
