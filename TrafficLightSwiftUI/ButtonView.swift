//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Nikita on 06.09.21.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Color(.systemBlue)
            .frame(width: 150, height: 75)
            .cornerRadius(30)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.white, lineWidth: 3)
            )
            .shadow(radius: 10)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
