//
//  GaugeBackground.swift
//  Water
//
//  Created by Mohamed Ghazal on 2021-02-16.
//

import SwiftUI

struct GaugeBackground: View {
    var body: some View {
        HStack{
           
            ZStack{
                Gauge().stroke(LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: .leading, endPoint: .trailing),lineWidth: 15).frame(width: 150, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                VStack{
                    Text("100").fontWeight(.heavy).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
            }.padding()
        }
    }
}

struct GaugeBackground_Previews: PreviewProvider {
    static var previews: some View {
        GaugeBackground()
            .preferredColorScheme(.dark)
    }
}
