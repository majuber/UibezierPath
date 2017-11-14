//
//  PolygonPath.swift
//  UIBezierPath
//
//  Created by Juber Moulvi Abdul on 14/11/17.
//  Copyright © 2017 Juber Moulvi Abdul. All rights reserved.
//

import Foundation
import UIKit


class PolygonPath: UIBezierPath {
    
    let screenSize = UIScreen.main.bounds
    var screenWidth : CGFloat = 0
    var screenHeight : CGFloat = 0 // Status Bar height
    var statusBarHeight : CGFloat = 10
    var path: UIBezierPath!
    
    override init() {
        super.init()
        screenWidth = screenSize.width
        screenHeight = screenSize.height
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func drawPolygonWithSevenPointsClockwise(pt1:CGPoint,pt2:CGPoint,pt3:CGPoint,pt4:CGPoint,pt5:CGPoint,pt6:CGPoint,pt7:CGPoint) -> UIBezierPath{
        path = UIBezierPath()
        path.move(to: CGPoint(x: screenWidth * pt1.x, y: screenHeight * pt1.y + statusBarHeight))
        path.addLine(to: CGPoint(x: screenWidth * pt2.x, y: screenHeight * pt2.y + statusBarHeight))
        path.addLine(to: CGPoint(x: screenWidth * pt3.x, y: screenHeight * pt3.y + statusBarHeight))
        path.addLine(to: CGPoint(x: screenWidth * pt4.x, y: screenHeight * pt4.y + statusBarHeight))
        path.addLine(to: CGPoint(x: screenWidth * pt5.x, y: screenHeight * pt5.y + statusBarHeight))
        path.addLine(to: CGPoint(x: screenWidth * pt6.x, y: screenHeight * pt6.y + statusBarHeight))
        path.addLine(to: CGPoint(x: screenWidth * pt7.x, y: screenHeight * pt7.y + statusBarHeight))
        path.close()
        return path
    }
    
    
    func drawPolygonWithSixPointsClockwise(pt1:CGPoint,pt2:CGPoint,pt3:CGPoint,pt4:CGPoint,pt5:CGPoint,pt6:CGPoint) -> UIBezierPath{
        path = UIBezierPath()
        path.move(to: CGPoint(x: screenWidth * pt1.x, y: screenHeight * pt1.y + statusBarHeight))
        path.addLine(to: CGPoint(x: screenWidth * pt2.x, y: screenHeight * pt2.y + statusBarHeight))
        path.addLine(to: CGPoint(x: screenWidth * pt3.x, y: screenHeight * pt3.y + statusBarHeight))
        path.addLine(to: CGPoint(x: screenWidth * pt4.x, y: screenHeight * pt4.y + statusBarHeight))
        path.addLine(to: CGPoint(x: screenWidth * pt5.x, y: screenHeight * pt5.y + statusBarHeight))
        path.addLine(to: CGPoint(x: screenWidth * pt6.x, y: screenHeight * pt6.y + statusBarHeight))
        path.close()
        return path
    }
    
    func drawPolygonWithFivePointsClockwise(pt1:CGPoint,pt2:CGPoint,pt3:CGPoint,pt4:CGPoint,pt5:CGPoint) -> UIBezierPath{
        path = UIBezierPath()
        path.move(to: CGPoint(x: screenWidth * pt1.x, y: screenHeight * pt1.y + statusBarHeight))
        path.addLine(to: CGPoint(x: screenWidth * pt2.x, y: screenHeight * pt2.y + statusBarHeight))
        path.addLine(to: CGPoint(x: screenWidth * pt3.x, y: screenHeight * pt3.y + statusBarHeight))
        path.addLine(to: CGPoint(x: screenWidth * pt4.x, y: screenHeight * pt4.y + statusBarHeight))
        path.addLine(to: CGPoint(x: screenWidth * pt5.x, y: screenHeight * pt5.y + statusBarHeight))
        path.close()
        return path
    }
    
    func drawPolygonWithFourPointsClockwise(pt1:CGPoint,pt2:CGPoint,pt3:CGPoint,pt4:CGPoint) -> UIBezierPath{
        path = UIBezierPath()
        path.move(to: CGPoint(x: screenWidth * pt1.x, y: screenHeight * pt1.y + statusBarHeight))
        path.addLine(to: CGPoint(x: screenWidth * pt2.x, y: screenHeight * pt2.y + statusBarHeight))
        path.addLine(to: CGPoint(x: screenWidth * pt3.x, y: screenHeight * pt3.y + statusBarHeight))
        path.addLine(to: CGPoint(x: screenWidth * pt4.x, y: screenHeight * pt4.y + statusBarHeight))
        path.close()
        return path
    }
    
}


