//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Nikita on 06.09.21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var color: Color = .black
    @State private var buttonName = "START"
    
    private let switchOff = 0.5
    private let switchOn = 1.0
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 15) {
                ColorCircle(color: .red)
                    .opacity(color == .red ? switchOn : switchOff)
                ColorCircle(color: .yellow)
                    .opacity(color == .yellow ? switchOn : switchOff)
                ColorCircle(color: .green)
                    .opacity(color == .green ? switchOn : switchOff)
                Spacer()
                
                Button(action: { getLight() } ) {
                    ZStack {
                        ButtonView()
                        Text(buttonName)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                }
            }
        }
    }
}

extension ContentView {
    private func getLight() {
        if buttonName == "START" {
            buttonName = "NEXT"
        }
        
        switch color {
        case .red:
            color = .yellow
        case .yellow:
            color = .green
        default:
            color = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
