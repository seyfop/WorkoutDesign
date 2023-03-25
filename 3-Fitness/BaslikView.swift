//
//  BaslikView.swift
//  3-Fitness
//
//  Created by Seyfo on 23.03.2023.
//

import SwiftUI

struct BaslikView: View {
    var body: some View {
        VStack{
            Text("Workout Pro").font(.largeTitle).fontWeight(.thin).padding(.top, 20)
            Spacer()
        }
    }
}

struct BaslikView_Previews: PreviewProvider {
    static var previews: some View {
        BaslikView()
    }
}
