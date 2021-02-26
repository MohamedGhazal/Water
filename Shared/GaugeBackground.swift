//
//  GaugeBackground.swift
//  Water
//
//  Created by Mohamed Ghazal on 2021-02-16.
//

import SwiftUI

struct GaugeBackground: View {
    var progress: Double
    var color1: Color = Color.blue
    var color2: Color = Color.green
    
    var body: some View {
            
        HStack{
            ZStack{
                Gauge(
                    endAngle: Angle(degrees: progress*3.6-180.01))
                    .stroke(
                        LinearGradient(
                            gradient: Gradient(colors: [color1, color2]),
                            startPoint: .leading, endPoint: .trailing),lineWidth: 15)
                
                    Text(String(Int(progress))+"%")                
            }.padding()
        }
    }
}

struct GaugeBackground_Previews: PreviewProvider {
    static var previews: some View {
        GaugeBackground(progress: 100)
            .preferredColorScheme(.dark)
    }
}
