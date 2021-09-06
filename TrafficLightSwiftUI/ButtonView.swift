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
            .frame(width: 200, height: 80)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 5)
            )
            .shadow(radius: 10)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
