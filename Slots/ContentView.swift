//
//  ContentView.swift
//  Slots
//
//  Created by Soorya Narayanan Sanand on 5/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var credits = 1000
    @State var slot1 = "slot1"
    @State var slot2 = "slot2"
    @State var slot3 = "slot3"
    @State var score = 0
    
    var body: some View {
        VStack {
            Text("Slots")
                .font(.title)
                .padding(.top, 50.0)
            Spacer()
            Text("Credits: " + String(credits))
            Text("Score: " + String(score)).padding(.top, 15.0)
            Spacer()
            HStack{
                Image(slot1).resizable().aspectRatio(contentMode: .fit)
                Image(slot2).resizable().aspectRatio(contentMode: .fit)
                Image(slot3).resizable().aspectRatio(contentMode: .fit)
            }
            Spacer()
            Button {
                let slot1Rand = Int.random(in: 1...3)
                let slot2Rand = Int.random(in: 1...3)
                let slot3Rand = Int.random(in: 1...3)
                
                slot1 = "slot" + String(slot1Rand)
                slot2 = "slot" + String(slot2Rand)
                slot3 = "slot" + String(slot3Rand)
                
                if slot1 == slot2 && slot2 == slot3 {
                    credits += 15
                    score += 15
                } else {
                    credits -= 15
                }
                
                return
                
                
                
            } label: {
                Text("Spin")
                    .padding(.horizontal, 70.0).padding(.vertical, 13.0)
            }.frame(width: 200.0, height: 50.0).buttonStyle(.borderedProminent).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
