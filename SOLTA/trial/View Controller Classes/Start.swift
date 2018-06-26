//
//  ViewController.swift
//  trial
//
//  Created by Craig Kielburger on 2018-06-05.
//  Copyright © 2018 Craig Kielburger. All rights reserved.
//

import UIKit

class Start: UIViewController {
    
    var signUp: UIButton? = nil
    
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
        let tealTriangle = Triangle(color: #colorLiteral(red: 0.1616759598, green: 0.4139800668, blue: 0.4460930824, alpha: 1), points: [CGPoint(x: screenW, y: screenH),CGPoint(x:0, y: screenH),CGPoint(x: screenW, y: screenH/2)]) //teal triangle created
        self.view.layer.addSublayer(tealTriangle.layer) //teal triangle added to view
    
        let darkTriangle = Triangle(color: #colorLiteral(red: 0.1057414785, green: 0.1838205457, blue: 0.2888716757, alpha: 1), points: [CGPoint(x: 0, y: screenH),CGPoint(x: screenW, y: screenH),CGPoint(x: 0, y: 3*screenH/5)]) //dark triangle created
        self.view.layer.addSublayer(darkTriangle.layer) //dark triangle added to view
        
        let greenTriangle = Triangle(color: #colorLiteral(red: 0.3664604723, green: 0.615541935, blue: 0.5113402009, alpha: 1), points:  [CGPoint(x: 1*screenW/5, y: screenH), CGPoint(x: screenW, y: screenH), CGPoint(x: screenW, y: 4*screenH/5)]) //green triangle created
        self.view.layer.addSublayer(greenTriangle.layer) //green triangle added to view
        
        //button created
        signUp = UIButton() //signup button created
        signUp?.backgroundColor = #colorLiteral(red: 0.7885366082, green: 0.3550464213, blue: 0.458116293, alpha: 1) //button made pink
        signUp?.frame.size.width = screenW-80 //button width selected
        signUp?.frame.size.height = 60 //button height selected
        signUp?.center = CGPoint(x: screenW/2, y: screenH/2) //button center selected
        signUp?.setTitle("Sign Up", for: UIControlState.normal) //text added to button
        signUp?.setTitleColor(#colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1), for: UIControlState.normal) //text made white
        signUp?.layer.cornerRadius = 10 //button corners rounded
        signUp?.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 30) //font type selected
        signUp?.addTarget(self, action: #selector(Start.signUpButtonPressed), for: .touchUpInside) //press function called
        view.addSubview(signUp!) //signup button added to the view
        
        //title created
        let title = UILabel() //label created
        title.text = "SOLTA" //SOLTA added
        title.font = UIFont(name: "Avenir-Heavy", size: 100*screenW/414) //font type selected
        title.textAlignment = NSTextAlignment.center //allignment selected
        title.frame.size.width = screenW //width selected
        title.frame.size.height = 200 //height selected
        title.center = CGPoint(x: screenW/2, y: screenH/4) //label center selected
        title.textColor = #colorLiteral(red: 0.1057414785, green: 0.1838205457, blue: 0.2888716757, alpha: 1) //text made blue
        view.addSubview(title) //label added to view
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func signUpButtonPressed(){
        self.signUp?.backgroundColor = #colorLiteral(red: 0.6642247559, green: 0.3026027467, blue: 0.3965811404, alpha: 1) //button color changed on press
        present(SignUp(), animated: true) //SignUp viewcontroller created and presented
    }
    
}

