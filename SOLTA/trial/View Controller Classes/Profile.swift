//
//  Profile.swift
//  trial
//
//  Created by Craig Kielburger on 2018-06-06.
//  Copyright © 2018 Craig Kielburger. All rights reserved.
//

import Foundation
import UIKit

class Profile: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //create useful variables
        let screenW = self.view.frame.size.width
        let screenH = self.view.frame.size.height
        
        //determining bar height
        var bottom: CGFloat = 0.0
        if self.view.frame.height == 812.0 { //iPhone X height
            bottom = 83.0 //iPhone X bar height
        } else {
            bottom = 49.0 //All other devices bar height
        }
        print(bottom) //just here to use "bottom" variable to remove warning
        
        //background created
        let background = UIView() //background created
        background.frame.size.width = screenW //background made to screen width
        background.frame.size.height = screenH //background made to screen height
        background.center = CGPoint(x: screenW/2, y: screenH/2) //background centered on screen
        background.backgroundColor = #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1) //background made white
        view.addSubview(background) //background added to view
        
        //three triangles created
        let darkTriangle = Triangle(color: #colorLiteral(red: 0.1529411765, green: 0.2274509804, blue: 0.3254901961, alpha: 1), points: [CGPoint(x: 0, y: 0), CGPoint(x: screenW, y: 0), CGPoint(x: screenW, y: screenH/8)]) //dark triangle created
        view.layer.addSublayer(darkTriangle.layer) //dark triangle added to view
        let tealTriangle = Triangle(color: #colorLiteral(red: 0.1616759598, green: 0.4139800668, blue: 0.4460930824, alpha: 1), points: [CGPoint(x: 0, y: 0), CGPoint(x: screenW, y: 0), CGPoint(x: 0, y: screenH/10)]) //teal triangle created
        view.layer.addSublayer(tealTriangle.layer) //teal triangle added to view
        let greenTriangle = Triangle(color: #colorLiteral(red: 0.3664604723, green: 0.615541935, blue: 0.5113402009, alpha: 1), points: [CGPoint(x: 2*screenW/5, y: 0), CGPoint(x: screenW, y: 0), CGPoint(x: screenW, y: screenH/16)]) //green triangle created
        view.layer.addSublayer(greenTriangle.layer) //green triangle added to view
    }
    
}
