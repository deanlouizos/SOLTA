//
//  SignUp.swift
//  trial
//
//  Created by Craig Kielburger on 2018-06-05.
//  Copyright © 2018 Craig Kielburger. All rights reserved.
//

import Foundation
import UIKit

class SignUp: UIViewController {
    
    var startCol: UIButton? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //create useful variables
        let screenW = self.view.frame.size.width
        let screenH = self.view.frame.size.height
        
        //background created
        let background = UIView() //background created
        background.frame.size.width = screenW //background made to screen width
        background.frame.size.height = screenH //background made to screen height
        background.center = CGPoint(x: screenW/2, y: screenH/2) //background centered on screen
        background.backgroundColor = #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1) //background made white
        view.addSubview(background) //background added to view
        
        //three triangles created
        let tealTriangle = Triangle(color: #colorLiteral(red: 0.1616759598, green: 0.4139800668, blue: 0.4460930824, alpha: 1), points: [CGPoint(x: 0, y: screenH), CGPoint(x: screenW, y: screenH), CGPoint(x: screenW, y: screenH/2)]) //teal triangle created
        view.layer.addSublayer(tealTriangle.layer) //teal triangle added to view
        
        let darkTriangle = Triangle(color: #colorLiteral(red: 0.1057414785, green: 0.1838205457, blue: 0.2888716757, alpha: 1), points: [CGPoint(x: 0, y: screenH), CGPoint(x: screenW, y: screenH), CGPoint(x: screenW, y: 2*screenH/3)]) //dark triangle created
        view.layer.addSublayer(darkTriangle.layer) //dark triangle added to view
        
        let greenTriangle = Triangle(color: #colorLiteral(red: 0.3664604723, green: 0.615541935, blue: 0.5113402009, alpha: 1), points: [CGPoint(x: 0, y: screenH), CGPoint(x: screenW, y: screenH), CGPoint(x: screenW, y: 6*screenH/7)]) //green triangle created
        view.layer.addSublayer(greenTriangle.layer) //green triangle added to view
        
        //text field created
        let usernameBack = UIView() //username field background created
        let username = UITextField() //username fied created
        username.frame.size.width = screenW-100 // username field width set
        username.center = CGPoint(x: screenW/2, y: screenH/4) // username field center set
        username.frame.size.height = 60 //username field height set
        username.backgroundColor = #colorLiteral(red: 1, green: 0.9956883733, blue: 0.9827534931, alpha: 1) //username field color set
        username.placeholder = "Username" //username field placeholder set
        username.font = UIFont(name: "Avenir-Heavy", size: 30) //username field font set
        usernameBack.backgroundColor = #colorLiteral(red: 1, green: 0.9956883733, blue: 0.9827534931, alpha: 1) //username field background color set
        usernameBack.frame.size.width = username.frame.size.width+20 //username field background width set
        usernameBack.frame.size.height = username.frame.size.height //username field background height set
        usernameBack.layer.cornerRadius = 10 //username field corner radius set
        usernameBack.center = username.center //username field background centered
        view.addSubview(usernameBack) //username field background added to view
        view.addSubview(username) //username field added to view
        
        //start collecting button created
        startCol = UIButton() //start collecting button created
        startCol?.backgroundColor = #colorLiteral(red: 0.7885366082, green: 0.3550464213, blue: 0.458116293, alpha: 1) //button made pink
        startCol?.frame.size.width = screenW-80 //button width set
        startCol?.frame.size.height = 60 //button
        startCol?.setTitle("Start Collecting", for: UIControlState.normal) //text added to button
        startCol?.titleLabel?.textColor = #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1) //text color set
        startCol?.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 30) //text size set
        startCol?.layer.cornerRadius = 10 //corner radius of button set
        startCol?.addTarget(self, action: #selector(SignUp.buttonPressed), for: UIControlEvents.touchUpInside) //pressed function called
        startCol?.center = CGPoint(x: screenW/2, y: 3*screenH/7) //button center set
        view.addSubview(startCol!) //button added to view
    }
    
    @objc func buttonPressed(){
        self.startCol?.backgroundColor = #colorLiteral(red: 0.6642247559, green: 0.3026027467, blue: 0.3965811404, alpha: 1) //button color change on press
        let target = UINavigationController(rootViewController: TabBarController()) //tab bar is created
        target.navigationBar.isHidden = true //navigation bar is removed
        present(target, animated: true) //tab bar is presented
    }
    
}
