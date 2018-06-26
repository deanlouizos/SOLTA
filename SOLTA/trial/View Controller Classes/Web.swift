//
//  Web.swift
//  trial
//
//  Created by Craig Kielburger on 2018-06-07.
//  Copyright © 2018 Craig Kielburger. All rights reserved.
//

import Foundation
import UIKit

class Web: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //create useful variables
        let screenW = self.view.frame.size.width
        let screenH = self.view.frame.size.height
        
        //determining bar height
        var bottom: CGFloat = 0.0
        if screenH == 812.0 { //iPhone X height
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
    }
    
}
