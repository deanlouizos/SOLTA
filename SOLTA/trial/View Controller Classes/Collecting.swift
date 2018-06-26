//
//  Collecting.swift
//  trial
//
//  Created by Craig Kielburger on 2018-06-06.
//  Copyright © 2018 Craig Kielburger. All rights reserved.
//

import Foundation
import UIKit

class Collecting: UIViewController {
    
    var stopCol: UIButton? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //create useful variables
        let screenW = self.view.frame.size.width
        let screenH = self.view.frame.size.height
        let ratio = CGFloat(screenW/414)
        
        //background created
        let background = UIView() //background created
        background.frame.size.width = screenW //background made to screen width
        background.frame.size.height = screenH //background made to screen height
        background.center = CGPoint(x: screenW/2, y: screenH/2) //background centered on screen
        background.backgroundColor = #colorLiteral(red: 0.1057414785, green: 0.1838205457, blue: 0.2888716757, alpha: 1) //background made dark
        view.addSubview(background) //background added to view
        
        //words created
        let title = UILabel() //words created
        title.text = "Collecting Cosmic Rays" //text added
        title.font = UIFont(name: "Avenir-Heavy", size: 40) //font size set
        title.numberOfLines = 2 //number of lines set
        title.frame.size.width = screenW //width set
        title.frame.size.height = 150 //height set
        title.textAlignment = NSTextAlignment.center //text alligned in the center
        title.center = CGPoint(x: self.view.center.x, y: screenH/5) //text center set
        title.textColor = #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1) //text color set
        view.addSubview(title) //text added to view
        
        //imageView created
        let image = UIImageView() //image view created
        image.frame.size.width = screenW-175*ratio //width set
        image.frame.size.height = image.frame.size.width //height set to make square
        image.center.x = self.view.center.x //centered in the x
        image.center.y = 13*self.view.center.y/14 //positioned below the title
        //image.image = //image view populated with hits
        image.backgroundColor = #colorLiteral(red: 0.7885366082, green: 0.3550464213, blue: 0.458116293, alpha: 1) //place holder color to be removed when code to populate the image view is added
        view.addSubview(image) //image view added to view
        
        //button created
        stopCol = UIButton() //button created
        stopCol?.backgroundColor = #colorLiteral(red: 0.7885366082, green: 0.3550464213, blue: 0.458116293, alpha: 1) //color made pink
        stopCol?.frame.size.width = screenW-80 //width set
        stopCol?.frame.size.height = 60 //height set
        stopCol?.center = CGPoint(x: self.view.center.x, y: image.center.y+image.frame.size.height/2+90) //button center set
        stopCol?.setTitle("Stop Collecting", for: UIControlState.normal) //text set
        stopCol?.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 30) //font set
        stopCol?.setTitleColor(#colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1), for: UIControlState.normal) //text color set
        stopCol?.layer.cornerRadius = 10 // corner radius set
        stopCol?.addTarget(self, action: #selector(Collecting.stopColPressed), for: UIControlEvents.touchUpInside) //pressed function called
        view.addSubview(stopCol!) //button added to view
    }
    
    @objc func stopColPressed(){
        self.stopCol?.backgroundColor = #colorLiteral(red: 0.6642247559, green: 0.3026027467, blue: 0.3965811404, alpha: 1) //button color change on press
        dismiss(animated: true) //dismiss view controller and go back to previous view
    }
    
}
