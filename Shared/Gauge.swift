//
//  Gauge.swift
//  Water
//
//  Created by Mohamed Ghazal on 2021-02-16.
//

import SwiftUI

struct Gauge: Shape {
    var endAngle: Angle
    
    func path(in rect: CGRect) -> Path {
        let start = CGPoint(x: 0, y: rect.midY)
        let radius = min(rect.midX,rect.midY)
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let startAngle = Angle(degrees: 180.0)
        
        var p = Path()
        p.addLine(to: start)
        p.addArc(center: center,
                 radius: radius,
                 startAngle: startAngle,
                 endAngle: endAngle,
                 clockwise: false)
        
        
        return p
    }
    

}
