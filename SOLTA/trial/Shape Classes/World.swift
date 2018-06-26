//
//  World.swift
//  trial
//
//  Created by Craig Kielburger on 2018-06-20.
//  Copyright © 2018 Craig Kielburger. All rights reserved.
//

import Foundation
import UIKit

class World {
    
    var layer = CAShapeLayer()
    var path = UIBezierPath()
    init(color: CGColor, size: Double, center: CGPoint) {
        let radius = CGFloat(size/2)
        let radius2 = CGFloat((radius*radius+radius*radius).squareRoot())
        
        path.move(to: center)
        path.addLine(to: CGPoint(x: center.x, y: center.y-radius))
        path.addArc(withCenter: center, radius: radius, startAngle: 3*(.pi)/2, endAngle: .pi, clockwise: false)
        path.addLine(to: CGPoint(x: center.x+radius, y: center.y))
        path.addArc(withCenter: center, radius: radius, startAngle: 0, endAngle: 3*(.pi)/2, clockwise: false)
        path.addArc(withCenter: CGPoint(x: center.x+radius, y: center.y), radius: radius2, startAngle: 5*(.pi)/4, endAngle: 3*(.pi)/4, clockwise: false)
        path.addArc(withCenter: CGPoint(x: center.x-radius, y: center.y), radius: radius2, startAngle: (.pi)/4, endAngle: 7*(.pi)/4, clockwise: false)
        path.addLine(to: CGPoint(x: center.x, y: center.y+radius))
        path.addArc(withCenter: center, radius: radius, startAngle: .pi/2, endAngle: (.pi)+acos((CGFloat(7.0/16.0)).squareRoot()), clockwise: true)
        path.addArc(withCenter: CGPoint(x: center.x, y: center.y-radius), radius: radius2/2, startAngle: .pi-acos((7.0/8.0).squareRoot()), endAngle: acos((7.0/8.0).squareRoot()), clockwise: false)
        path.addArc(withCenter: center, radius: radius, startAngle: -acos((CGFloat(7.0/16.0))), endAngle: (.pi)-acos((CGFloat(7.0/16.0)).squareRoot()), clockwise: true)
        path.addArc(withCenter: CGPoint(x: center.x, y: center.y+radius), radius: radius2/2, startAngle: .pi+acos((7.0/8.0).squareRoot()), endAngle: -acos((7.0/8.0).squareRoot()), clockwise: true)
        
        layer.path = path.cgPath
        layer.fillColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        layer.lineJoin = kCALineJoinBevel
        layer.lineWidth = 2
        layer.strokeColor = color
    }
    
}
