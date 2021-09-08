//
//  ColorCircle.swift
//  TrafficLightSwiftUI
//
//  Created by Nikita on 06.09.21.
//

import SwiftUI

struct ColorCircle: View {
    @State var color: Color
    
    var opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .opacity(opacity)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacity: 1)
    }
}
