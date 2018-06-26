//
//  MapPin.swift
//  trial
//
//  Created by Craig Kielburger on 2018-06-19.
//  Copyright © 2018 Craig Kielburger. All rights reserved.
//

import Foundation
import UIKit

class MapPin {
    
    var focus: CGPoint = CGPoint(x: 0, y: 0)
    var color: CGColor = #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1)
    var path = UIBezierPath()
    var layer = CAShapeLayer()
    var layer2 = CAShapeLayer()
    var path2 = UIBezierPath()
    
    init(width: Double, color: CGColor, focus: CGPoint){
        self.focus = focus
        let radius = CGFloat(width/2)
        let tangent = CGFloat(tan(67.5*(.pi)/180))
        let x1 = (radius*radius*tangent*tangent/(1+tangent*tangent)).squareRoot()
        let y1 = (radius*radius-x1*x1).squareRoot()
        let b: CGFloat = y1-tangent*x1
        let theta = asin(-b*sin((22.5/180)*(.pi))/radius)-(67.5*(.pi)/180)
        let bottomPoint = CGPoint(x: focus.x, y: focus.y-b)
        
        path.move(to: bottomPoint)
        path.addLine(to: CGPoint(x: focus.x+x1, y: focus.y+y1))
        path.addArc(withCenter: focus, radius: radius, startAngle: -theta, endAngle: .pi+theta, clockwise: false)
        path.close()
        
        layer.fillColor = color
        
        path2.move(to: CGPoint(x: focus.x+radius/3, y: focus.y))
        path2.addArc(withCenter: focus, radius: radius/3, startAngle: 0, endAngle: .pi, clockwise: true)
        path2.addArc(withCenter: focus, radius: radius/3, startAngle: .pi, endAngle: 0, clockwise: true)
        path2.close()
        
        layer.path = path.cgPath
        layer2.fillColor = #colorLiteral(red: 0.1057414785, green: 0.1838205457, blue: 0.2888716757, alpha: 1)
        layer2.path = path2.cgPath
    }
    
}
