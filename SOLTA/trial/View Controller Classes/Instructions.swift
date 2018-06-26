//
//  Instructions.swift
//  trial
//
//  Created by Craig Kielburger on 2018-06-05.
//  Copyright © 2018 Craig Kielburger. All rights reserved.
//

import Foundation
import UIKit

class Instructions: UIViewController ,  UITabBarControllerDelegate{
    
    var collect: UIButton? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //create useful variables
        let screenW = self.view.frame.size.width
        let screenH = self.view.frame.size.height
        let ratio = CGFloat(screenW/414)
        
        //determining bar height
        var bottom: CGFloat = 0.0
        if self.view.frame.height == 812.0 { //iPhone X height
            bottom = 83.0 //iPhone X bar height
        } else {
            bottom = 49.0 //All other devices bar height
        }
        
        //background created
        let background = UIView() //background created
        background.frame.size.width = screenW //background made to screen width
        background.frame.size.height = screenH //background made to screen height
        background.center = CGPoint(x: screenW/2, y: screenH/2) //background centered on screen
        background.backgroundColor = #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1) //background made white
        view.addSubview(background) //background added to view
        
        //three triangles created
        let darkTriangle = Triangle(color: #colorLiteral(red: 0.1529411765, green: 0.2274509804, blue: 0.3254901961, alpha: 1), points: [CGPoint(x: screenW, y: screenH-bottom), CGPoint(x:0, y: screenH-bottom), CGPoint(x: screenW, y: screenH/2-bottom)]) //dark triangle created
        view.layer.addSublayer(darkTriangle.layer) //dark triangle added to view
        let greenTriangle = Triangle(color: #colorLiteral(red: 0.3664604723, green: 0.615541935, blue: 0.5113402009, alpha: 1), points: [CGPoint(x: 0, y: screenH-bottom), CGPoint(x: screenW, y: screenH-bottom), CGPoint(x: 0, y: 3*screenH/5-bottom)]) //green triangle created
        view.layer.addSublayer(greenTriangle.layer) //green triangle added to view
        let tealTriangle = Triangle(color: #colorLiteral(red: 0.1616759598, green: 0.4139800668, blue: 0.4460930824, alpha: 1), points: [CGPoint(x: screenW/5, y: screenH-bottom), CGPoint(x: screenW, y: screenH-bottom), CGPoint(x: screenW, y: 4*screenH/5-bottom)]) //teal triangle created
        view.layer.addSublayer(tealTriangle.layer) //teal triangle added to view
        
        //instructions
        let title = UILabel() //title created
        title.text = "Before you start collecting:" //text added
        title.frame.size.width = screenW-60 //width set
        title.frame.size.height = 40*ratio //height set
        title.textAlignment = NSTextAlignment.center //text alligned center
        title.font = UIFont(name: "Avenir-Heavy", size: 25*ratio) //font set
        title.textColor = #colorLiteral(red: 0.1057414785, green: 0.1838205457, blue: 0.2888716757, alpha: 1) //text made blue
        title.center = CGPoint(x: screenW/2, y: screenH/6) //title center set
        view.addSubview(title) //title added to view
        
        let firstText = UILabel() //first line created
        firstText.text = "1. Cover the camera on the device." //text added
        firstText.font = UIFont(name: "Avenir-Heavy", size: 18*ratio) //font set
        firstText.textColor = #colorLiteral(red: 0.1057414785, green: 0.1838205457, blue: 0.2888716757, alpha: 1) //font color set
        firstText.frame.size.height = 100 //height set
        firstText.frame.size.width = 350*ratio //width set
        firstText.center = CGPoint(x: screenW/2, y: title.center.y+40*ratio) //text centered
        firstText.textAlignment = .left //text alligned left
        view.addSubview(firstText) //first line added to view
        
        let secondText = UILabel() //second line created
        secondText.text = "2. Plug your device into a power source." //text added
        secondText.font = UIFont(name: "Avenir-Heavy", size: 18*ratio) //font set
        secondText.textColor = #colorLiteral(red: 0.1057414785, green: 0.1838205457, blue: 0.2888716757, alpha: 1) //font color set
        secondText.frame.size.height = 100 //height set
        secondText.frame.size.width = 350*ratio //width set
        secondText.center = CGPoint(x: screenW/2, y: firstText.center.y+40*ratio) //text center set
        secondText.textAlignment = .left //text alligned left
        view.addSubview(secondText) //second line added to view
        
        let thirdText = UILabel() //third line created
        thirdText.text = "3. Start collecting cosmic rays." //text added
        thirdText.font = UIFont(name: "Avenir-Heavy", size: 18*ratio) //font set
        thirdText.textColor = #colorLiteral(red: 0.1057414785, green: 0.1838205457, blue: 0.2888716757, alpha: 1) //color made blue
        thirdText.frame.size.height = 100 //height set
        thirdText.frame.size.width = 350*ratio //width set
        thirdText.center = CGPoint(x: screenW/2, y: secondText.center.y+40*ratio) //text center set
        thirdText.textAlignment = .left //text alligned left
        view.addSubview(thirdText) //third line added to view
        
        
        //start collectng button created
        collect = UIButton() //button created
        collect?.backgroundColor = #colorLiteral(red: 0.7885366082, green: 0.3550464213, blue: 0.458116293, alpha: 1) //button color set
        collect?.setTitle("Collect", for: UIControlState.normal) //text set
        collect?.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 30) //text font set
        collect?.frame.size.height = 60 //height set
        collect?.frame.size.width = screenW-80 //button width set
        collect?.center = CGPoint(x: screenW/2, y: 3*screenH/5) //button center set
        collect?.layer.cornerRadius = 10 //corner radius set
        collect?.addTarget(self, action: #selector(Instructions.buttonPressed), for: UIControlEvents.touchUpInside) //pressed function called
        view.addSubview(collect!) //button added to view
    }
    
    @objc func buttonPressed(){
        present(Collecting(), animated: true) //creates and presents the collecting screen
    }
    
}
