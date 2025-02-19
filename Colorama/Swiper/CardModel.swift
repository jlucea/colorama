//
//  CardModel.swift
//  Colorama
//
//  Created by Jaime Lucea on 19/2/25.
//

import SwiftUI

struct CardModel {
    
    let text: String?
    let image: Image?
    let color: Color = RandomColorGenerator.generate()
    
}
