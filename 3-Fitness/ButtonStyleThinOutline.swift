//
//  ButtonStyleThinOutline.swift
//  3-Fitness
//
//  Created by Seyfo on 23.03.2023.
//

import SwiftUI

struct ButtonStyleThinOutline: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.padding()
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 15).fill(Color("Accent4")).opacity(0.1))
    }
    
    
    }

struct ButtonStyleThinOutline_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color("Secondary4").edgesIgnoringSafeArea(.all)
            Button("Test-Button Nasıl Görünüyor"){}.buttonStyle(ButtonStyleThinOutline())
            
        }
    }
}
