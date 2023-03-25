//
//  ContentView.swift
//  3-Fitness
//
//  Created by Seyfo on 23.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showMenus = false
    private var backgroundGradient = LinearGradient(colors: [Color("Background4"),Color("Secondary4")], startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        ZStack {
            backgroundGradient.edgesIgnoringSafeArea(.all)
            BaslikView()
            
            Group{
                MenuView(showMenu: $showMenus)
                TekrarHosgeldinView(showMenus: $showMenus)
            }
        }.font(.title)
            .foregroundColor(Color("Foreground4"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
