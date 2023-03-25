//
//  MenuView.swift
//  3-Fitness
//
//  Created by Seyfo on 23.03.2023.
//

import SwiftUI

struct MenuView: View {
    
    @Binding var showMenu : Bool
    var blurRadius : CGFloat = 4
    
    var body: some View {
        VStack(spacing: 20) {
            
            HStack(spacing: 20){ // 2 Tane menü sütununu yan yana görünteleyecek
                
                // 1.Sütun
                VStack(spacing: 25){
                    
                    Text("Datas").fontWeight(.thin).padding()
                    
                    Group{
                        Button(action: {}, label: {Image("Menu1").resizable().frame(width: 50,height: 50)})
                        Button(action: {}, label: {Image("Menu2").resizable().frame(width: 50,height: 50)})
                        Button(action: {}, label: {Image("Menu3").resizable().frame(width: 50,height: 50)})
                        
                    }.padding()
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("Accent4")).opacity(0.1))
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color("Accent4"),lineWidth: 0.7))
                    
                    
                }.frame(maxWidth: .infinity,maxHeight: 500)
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color("Background4")).opacity(0.95)).shadow(radius: 8)
                    .scaleEffect(showMenu ? 1 : 0.8)
                    .blur(radius: showMenu ? 0 : blurRadius)
                    .offset(x: showMenu ? 0 : -85)
                   .animation(showMenu ? .timingCurve(0, -2, 1, 0,duration: 1): .timingCurve(0, 1, 0, 15,duration: 1))
                
                
                // 2.Sütun
                
                VStack(spacing: 25){
                    
                    Text("Datas").fontWeight(.thin).padding()
                    
                    Group{
                        Button(action: {}, label: {Image("Menu4").resizable().frame(width: 50,height: 50)})
                        Button(action: {}, label: {Image("Menu5").resizable().frame(width: 50,height: 50)})
                        Button(action: {}, label: {Image("Menu6").resizable().frame(width: 50,height: 50)})
                        
                    }.padding()
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("Accent4")).opacity(0.1))
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color("Accent4"),lineWidth: 0.7))
                    
                    
                }.frame(maxWidth: .infinity,maxHeight: 500)
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color("Background4")).opacity(0.95)).shadow(radius: 8)
                    .scaleEffect(showMenu ? 1 : 0.8)
                    .blur(radius: showMenu ? 0 : blurRadius)
                    .offset(x: showMenu ? 0 : 85)
                    .animation(showMenu ? .timingCurve(0, -2, 1, 0,duration: 1): .timingCurve(0, 1, 0, 15,duration: 1))
                
            }// HStack Bitişi
            Button(action: {self.showMenu.toggle()}) {
                Text("Done").fontWeight(.light).frame(maxWidth: .infinity)
            }.buttonStyle(ButtonStyleThinOutline())
                .offset(y: showMenu ? 0 : 300)
                .blur(radius: showMenu ? 0 : blurRadius)
                .animation(.easeIn(duration: 1))
            
            
        }.padding()
            .zIndex(showMenu ? 1 : 0)
            
        }
    }


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(showMenu: .constant(false))
    }
}
