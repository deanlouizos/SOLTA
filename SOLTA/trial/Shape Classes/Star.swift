//
//  Stars.swift
//  trial
//
//  Created by Craig Kielburger on 2018-06-07.
//  Copyright © 2018 Craig Kielburger. All rights reserved.
//

import Foundation
import UIKit

class Star {
    
    var path = UIBezierPath()
    var layer = CAShapeLayer()
    
    init(size: CGFloat, color: CGColor, center: CGPoint) {
        path.move(to: CGPoint(x: center.x, y:center.y-CGFloat(size)))
        path.addLine(to: CGPoint(x: center.x+CGFloat(size*cos(.pi/3)/6), y: center.y-CGFloat(size*sin(.pi/3)/6)))
        path.addLine(to: CGPoint(x: center.x+CGFloat(size*cos(.pi/6)), y: center.y-CGFloat(size*sin(.pi/6))))
        path.addLine(to: CGPoint(x: center.x+CGFloat(size/6), y: center.y))
        path.addLine(to: CGPoint(x: center.x+CGFloat(size*cos(.pi/6)), y: center.y+CGFloat(size*sin(.pi/6))))
        path.addLine(to: CGPoint(x: center.x+CGFloat(size*cos(.pi/3)/6), y: center.y+CGFloat(size*sin(.pi/3)/6)))
        path.addLine(to: CGPoint(x: center.x, y: center.y+CGFloat(size)))
        path.addLine(to: CGPoint(x: center.x-CGFloat(size*cos(.pi/3)/6), y: center.y+CGFloat(size*sin(.pi/3)/6)))
        path.addLine(to: CGPoint(x: center.x-CGFloat(size*cos(.pi/6)), y: center.y+CGFloat(size*sin(.pi/6))))
        path.addLine(to: CGPoint(x: center.x-CGFloat(size/6), y: center.y))
        path.addLine(to: CGPoint(x: center.x-CGFloat(size*cos(.pi/6)), y: center.y-CGFloat(size*sin(.pi/6))))
        path.addLine(to: CGPoint(x: center.x-CGFloat(size*cos(.pi/3)/6), y: center.y-CGFloat(size*sin(.pi/3)/6)))
        path.close()
        
        layer.fillColor = color
        layer.path = path.cgPath
    }
    
}
