//
//  TekrarHosgeldinView.swift
//  3-Fitness
//
//  Created by Seyfo on 23.03.2023.
//

import SwiftUI

struct TekrarHosgeldinView: View {
    
    @Binding var showMenus : Bool
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome Back").fontWeight(.thin).padding(.top)
            
            Text("Seyfo").fontWeight(.bold).font(.largeTitle)
            
            Image("seyfo")
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
            Spacer()
            
            
            Button(action: {self.showMenus.toggle()}) {
                Text("Details").fontWeight(.light).frame(maxWidth: .infinity)
            }.buttonStyle(ButtonStyleThinOutline())
                .padding()
        } // VStack Bitiş
        .frame(width: 300, height: 600)
        .background(RoundedRectangle(cornerRadius: 20).fill(Color("Secondary4")).shadow(radius: 8))
        .scaleEffect(showMenus ? 0.7 : 1)
        .blur(radius: showMenus ? 5 : 0)
        .animation(showMenus ? Animation.easeInOut(duration: 1).delay(0.1): .timingCurve(0.5, 0, 0.5, 1.5,duration: 1))
    }
}

struct TekrarHosgeldinView_Previews: PreviewProvider {
    static var previews: some View {
        TekrarHosgeldinView(showMenus: .constant(false))
    }
}
