//
//  ContentView.swift
//  LessonOne_SwiftUI
//
//  Created by Кирилл Крамар on 21.07.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var greenLightIsActive = true
    @State private var yellowLightIsActive = false
    @State private var redLightIsActive = false
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                ColorCircle(color: .systemGreen, isActive: greenLightIsActive)
                ColorCircle(color: .systemYellow, isActive: yellowLightIsActive)
                ColorCircle(color: .systemRed, isActive: redLightIsActive)
                Spacer()
                Button(action: {self.changeColor()}) {
                    Text("NEXT")
                        .font(.title)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 15)
                            .frame(width: 150, height: 50)
                    )
                }
            }
            .padding()
            
        }
    }
    
    private func changeColor() {
        if greenLightIsActive {
            greenLightIsActive = false
            yellowLightIsActive = true
        } else if yellowLightIsActive {
            yellowLightIsActive = false
            redLightIsActive = true
        } else {
            redLightIsActive = false
            greenLightIsActive = true
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
