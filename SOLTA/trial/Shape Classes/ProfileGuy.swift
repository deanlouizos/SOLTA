//
//  ProfileGuy.swift
//  trial
//
//  Created by Craig Kielburger on 2018-06-18.
//  Copyright © 2018 Craig Kielburger. All rights reserved.
//

import Foundation
import UIKit

class ProfileGuy {
    
    var layer = CAShapeLayer()
    var color: CGColor = #colorLiteral(red: 0.7885366082, green: 0.3550464213, blue: 0.458116293, alpha: 1)
    var focus: CGPoint

    init(width: Double, color: CGColor, focus: CGPoint) {
        let path = UIBezierPath()
        self.color = color
        self.focus = focus
        
        path.move(to: CGPoint(x: focus.x+CGFloat(width/2), y: focus.y))
        path.addArc(withCenter: focus, radius: CGFloat(width/2), startAngle: .pi, endAngle: 3*(.pi)/2, clockwise: true)
        path.addArc(withCenter: CGPoint(x: focus.x, y: focus.y-CGFloat(width/2+width/3)), radius: CGFloat(width/3), startAngle: .pi/2, endAngle: 3*(.pi)/2, clockwise: true)
        path.addArc(withCenter: CGPoint(x: focus.x, y: focus.y-CGFloat(width/2+width/3)), radius: CGFloat(width/3), startAngle: 3*(.pi)/2, endAngle: .pi/2, clockwise: true)
        path.addArc(withCenter: focus, radius: CGFloat(width/2), startAngle: 3*(.pi)/2, endAngle: 0, clockwise: true)
        path.close()
        
        layer.path = path.cgPath
        layer.fillColor = color
        }
    
}
