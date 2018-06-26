//
//  TabBar.swift
//  trial
//
//  Created by Craig Kielburger on 2018-06-12.
//  Copyright © 2018 Craig Kielburger. All rights reserved.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
   
    var guy: ProfileGuy?
    var guyFocus: CGPoint?
    var pin: MapPin?
    var pinFocus: CGPoint?
    var star: Star?
    var starFocus: CGPoint?
    var world: World?
    var worldFocus: CGPoint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //determining bar height
        var bottom: CGFloat = 0.0
        if self.view.frame.height == 812.0 { //iPhone X height
            bottom = 83.0 //iPhone X bar height
        } else {
            bottom = 49.0 //All other devices bar height
        }
        
        guyFocus = CGPoint(x: self.view.frame.size.width/8, y: self.view.frame.size.height-bottom/2+17) //set focus of guy
        pinFocus = CGPoint(x: 3*self.view.frame.size.width/8, y: self.view.frame.size.height-bottom/2-6) //set focus of pin
        starFocus = CGPoint(x: 5*self.view.frame.size.width/8, y: self.view.frame.size.height-bottom/2)//set focus of star
        worldFocus = CGPoint(x: 7*self.view.frame.size.width/8, y: self.view.frame.size.height-bottom/2) //set focus of world
        
        //adding items to the tab bar
        let profile = Profile() //creating profile page
        profile.tabBarItem = UITabBarItem(title: "", image: nil, tag: 0) //making profile a tab item
        let map = Map() //creating map page
        map.tabBarItem = UITabBarItem(title: "", image: nil, tag: 1) //making map a tab item
        let instructions = Instructions() //creating instructions page
        instructions.tabBarItem = UITabBarItem(title: "", image: nil, tag: 2) //making instructions a tab item
        let web = Web() //creating web page
        web.tabBarItem = UITabBarItem(title: "", image: nil, tag: 3) //making web a tab item
        let tabBarList = [profile, map, instructions, web] //creating an array of tab bar items
        
        //customizing tab bar
        self.tabBar.barTintColor = #colorLiteral(red: 0.1057414785, green: 0.1838205457, blue: 0.2888716757, alpha: 1)
        self.tabBar.backgroundColor = #colorLiteral(red: 0.1057414785, green: 0.1838205457, blue: 0.2888716757, alpha: 1)
        self.tabBar.tintColor = #colorLiteral(red: 0.7885366082, green: 0.3550464213, blue: 0.458116293, alpha: 1)
        self.tabBar.unselectedItemTintColor = #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1)
        self.tabBar.isOpaque = true
        
        //adding guy
        self.guy = ProfileGuy(width: 30, color: #colorLiteral(red: 0.7885366082, green: 0.3550464213, blue: 0.458116293, alpha: 1), focus: guyFocus!) // creating guy
        view.layer.addSublayer((guy?.layer)!) //adding guy to view
        
        //adding pin
        self.pin = MapPin(width: 25, color: #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1), focus: pinFocus!) //creating pin
        view.layer.addSublayer(pin!.layer) //adding pin to view
        view.layer.addSublayer(pin!.layer2) //adding circle in pin to view
        
        //adding star
        self.star = Star(size: 20, color: #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1), center: starFocus!) //creating star
        view.layer.addSublayer((star?.layer)!) //adding star to view
        
        //adding world
        self.world = World(color: #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1), size: 30, center: worldFocus!) //creating world
        view.layer.addSublayer(world!.layer) //adding world to view
        
        viewControllers = tabBarList //adding tab bar items to the tab bar
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag {
        case 0:
            self.guy = ProfileGuy(width: 30, color: #colorLiteral(red: 0.7885366082, green: 0.3550464213, blue: 0.458116293, alpha: 1), focus: self.guyFocus!) //remake guy in pink
            view.layer.addSublayer((guy?.layer)!) //add new guy to view
            
            self.pin = MapPin(width: 25, color: #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1), focus: self.pinFocus!) //remake pin in white
            view.layer.addSublayer((pin?.layer)!) //add new pin to view
            view.layer.addSublayer((pin?.layer2)!) //add new pin circle to view
            
            self.star = Star(size: 15, color: #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1), center: starFocus!) //remake star
            view.layer.addSublayer((star?.layer)!) //add new star to view
            
            self.world = World(color: #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1), size: 30, center: worldFocus!) //remake world in white
            view.layer.addSublayer((world?.layer)!) //add new world to view
            
            break
        case 1:
            self.guy = ProfileGuy(width: 30, color: #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1), focus: self.guyFocus!) //remake guy in white
            view.layer.addSublayer((guy?.layer)!) //add new guy to view
            
            self.pin = MapPin(width: 25, color: #colorLiteral(red: 0.7885366082, green: 0.3550464213, blue: 0.458116293, alpha: 1), focus: self.pinFocus!) //remake pin in pink
            view.layer.addSublayer((pin?.layer)!) //add new pin to view
            view.layer.addSublayer((pin?.layer2)!) //add new pin circle to view
            
            self.star = Star(size: 15, color: #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1), center: starFocus!) //remake star in white star
            view.layer.addSublayer((star?.layer)!) //adding new star to view
            
            self.world = World(color: #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1), size: 30, center: worldFocus!) //remake world in white
            view.layer.addSublayer((world?.layer)!) //adding new world to view
            
            break
        case 2:
            self.guy = ProfileGuy(width: 30, color: #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1), focus: self.guyFocus!) //remake guy in white
            view.layer.addSublayer((guy?.layer)!) //add new guy to view
            
            self.pin = MapPin(width: 25, color: #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1), focus: self.pinFocus!) //remake pin in white
            view.layer.addSublayer((pin?.layer)!) //add new pin to view
            view.layer.addSublayer((pin?.layer2)!) //add new pin circle to view
            
            self.star = Star(size: 15, color: #colorLiteral(red: 0.7885366082, green: 0.3550464213, blue: 0.458116293, alpha: 1), center: starFocus!) //remake star in pink
            view.layer.addSublayer((star?.layer)!) //add new star to view
            
            self.world = World(color: #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1), size: 30, center: worldFocus!) //remake world in white
            view.layer.addSublayer((world?.layer)!) //add new world to view
            
            break
        case 3:
            self.guy = ProfileGuy(width: 30, color: #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1), focus: self.guyFocus!) //remake guy in white
            view.layer.addSublayer((guy?.layer)!) //add new guy to view
            
            self.pin = MapPin(width: 25, color: #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1), focus: self.pinFocus!) //remake pin in white
            view.layer.addSublayer((pin?.layer)!) //add new pin to view
            view.layer.addSublayer((pin?.layer2)!) //add new pin circle to view
            
            self.star = Star(size: 15, color: #colorLiteral(red: 0.9603759646, green: 0.956155479, blue: 0.9425190091, alpha: 1), center: starFocus!) //remake star in white
            view.layer.addSublayer((star?.layer)!) //add new star to view
            
            self.world = World(color: #colorLiteral(red: 0.7885366082, green: 0.3550464213, blue: 0.458116293, alpha: 1), size: 30, center: worldFocus!) //remake world in pink
            view.layer.addSublayer((world?.layer)!) //add new world to view
            break
        default:
            break
        }
    }
    
}
