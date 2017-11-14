//
//  HomeMenuViewController.swift
//  UIBezierPath
//
//  Created by Juber Moulvi Abdul on 14/11/17.
//  Copyright © 2017 Juber Moulvi Abdul. All rights reserved.
//

import Foundation
import UIKit

class HomeMenuViewController: UIViewController {
    
    var homeMenuView : HomeMenuView!
    var addNewHighlightedView : AddNewHighlightedView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        homeMenuView = HomeMenuView(frame: CGRect(x: 0.0 ,y: 0.0 ,width: self.view.frame.size.width,height: self.view.frame.size.height))
        self.view.addSubview(homeMenuView)
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for shape in homeMenuView.shapeLayers {
            
            let touch = touches.first
            let point = touch!.location(in: self.view)
            if (shape.path?.contains(point))!   {
                
                let menuItem:MenuItem = MenuItem(rawValue: shape.name!)!
                
                switch menuItem {
                case .MenuItem6:
                    DispatchQueue.main.async {
                        self.addNewShapeLayer()
                    }
                case .MenuItem1:
                    addNewHighlightedView.removeFromSuperview()
                case .MenuItem2:
                    addNewHighlightedView.removeFromSuperview()
                case .MenuItem3:
                    addNewHighlightedView.removeFromSuperview()
                case .MenuItem5:
                    addNewHighlightedView.removeFromSuperview()
                case .MenuItem7:
                    addNewHighlightedView.removeFromSuperview()
                case .MenuItem8:
                    addNewHighlightedView.removeFromSuperview()
                case .MenuItem9:
                    addNewHighlightedView.removeFromSuperview()
                case .MenuItem10:
                    addNewHighlightedView.removeFromSuperview()
                case .MenuItem4:
                    addNewHighlightedView.removeFromSuperview()
                }
                
            }
            else {
                if addNewHighlightedView != nil {
                    addNewHighlightedView.removeFromSuperview()
                }
                
            }
        }
    }
    
}


extension HomeMenuViewController {
    
    
    // Add New -> Event (action)
    @objc func event1Action(sender:UIButton){
        print("event1Action")
        
    }
    
    // Add New -> Event (action)
    @objc func event2Action(sender:UIButton){
        print("event2Action")
        
    }
    
    // Add New -> Event (action)
    @objc func event3Action(sender:UIButton){
        print("event3Action")
        
    }
    
    func addNewShapeLayer() {
        
        self.addNewHighlightedView = AddNewHighlightedView(frame: CGRect(x: 0.0 , y: 0.0 , width: self.view.frame.size.width, height: self.view.frame.size.height))
        self.addNewHighlightedView.tag = 999
        self.view.addSubview(self.addNewHighlightedView)
        
        let addNewViewFrame = addNewHighlightedView.getFrame(value: .MenuItem6)
        
        // Create Event1 Button Programmatically
        let event1Button = UIButton(frame: CGRect(x: addNewViewFrame.origin.x + 25, y: addNewViewFrame.origin.y + addNewViewFrame.size.height/4, width: addNewViewFrame.width/3, height: 21))
        event1Button.backgroundColor = UIColor.clear
        event1Button.setTitle("Event1", for: .normal)
        event1Button.contentHorizontalAlignment = .left
        event1Button.addTarget(self, action:#selector(self.event1Action(sender:)) , for: UIControlEvents.touchUpInside)
        addNewHighlightedView.addSubview(event1Button)
        
        // Create Event2 Button Programmatically
        let event2Button = UIButton(frame: CGRect(x: addNewViewFrame.origin.x + 25 + addNewViewFrame.width/3, y: addNewViewFrame.origin.y + addNewViewFrame.size.height/4, width: addNewViewFrame.width/3, height: 21))
        event2Button.backgroundColor = UIColor.clear
        event2Button.setTitle("Event2", for: .normal)
        event2Button.contentHorizontalAlignment = .right
        event2Button.addTarget(self, action:#selector(self.event2Action(sender:)) , for: UIControlEvents.touchUpInside)
        addNewHighlightedView.addSubview(event2Button)
        
        // Create Event3 Button Programmatically
        let event3Button = UIButton(frame: CGRect(x: addNewViewFrame.origin.x + 25, y: addNewViewFrame.origin.y + addNewViewFrame.size.height/4 + event1Button.frame.height + 25 , width: addNewViewFrame.width/3, height: 21))
        event3Button.backgroundColor = UIColor.clear
        event3Button.setTitle("Event3", for: .normal)
        event3Button.contentHorizontalAlignment = .left
        event3Button.addTarget(self, action:#selector(self.event3Action(sender:)) , for: UIControlEvents.touchUpInside)
        addNewHighlightedView.addSubview(event3Button)
        
    }
}

