//
//  ColorCircle.swift
//  LessonOne_SwiftUI
//
//  Created by Кирилл Крамар on 21.07.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

import SwiftUI

struct ColorCircle: View {
    var color: UIColor
    var isActive: Bool
    var body: some View {
        Color(color)
            .frame(width: 120, height: 120)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .opacity(isActive ? OperatingMode.isOn.rawValue : OperatingMode.isOff.rawValue)
        
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .white,isActive: false)
    }
}
