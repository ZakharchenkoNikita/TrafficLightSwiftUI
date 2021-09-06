//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Nikita on 06.09.21.
//

import SwiftUI

struct ContentView: View {
    
    @State var color: Color = .black
    @State var buttonName = "START"
    
    let switchOff = 0.5
    let switchOn = 1.0
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                ColorCircle(color: .red)
                    .opacity(color == .red ? switchOn : switchOff)
                    .padding(.bottom)
                ColorCircle(color: .yellow)
                    .opacity(color == .yellow ? switchOn : switchOff)
                    .padding(.bottom)
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
            .padding(.top)
        }
    }
    
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
