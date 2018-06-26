//
//  Triangle.swift
//  trial
//
//  Created by Craig Kielburger on 2018-06-08.
//  Copyright © 2018 Craig Kielburger. All rights reserved.
//

import Foundation
import UIKit

class Triangle {
    
    let path = UIBezierPath()
    let layer = CAShapeLayer()
    
    init(color: CGColor, points: [CGPoint]){
        path.move(to: points[0])
        path.addLine(to: points[1])
        path.addLine(to: points[2])
        path.close()
        
        layer.path = path.cgPath
        layer.fillColor = color
    }
    
}

