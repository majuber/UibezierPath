//
//  AddNewHighlightedView.swift
//  UIBezierPath
//
//  Created by Juber Moulvi Abdul on 14/11/17.
//  Copyright © 2017 Juber Moulvi Abdul. All rights reserved.
//

import Foundation

import UIKit

class AddNewHighlightedView: UIView {
    
    var shapeLayer : CAShapeLayer!
    var textLayer : CATextLayer!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.clear
        
        addNewShapeLayer()
        addNewTextLayer()
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
        
    }
    
    func addNewShapeLayer() {
        
        let polygonPath = PolygonPath()
        let path = polygonPath.drawPolygonWithFivePointsClockwise(pt1: PolygonPoints.addNewHighPoint1, pt2: PolygonPoints.addNewHighPoint2, pt3: PolygonPoints.addNewHighPoint3, pt4: PolygonPoints.addNewHighPoint4,pt5: PolygonPoints.addNewHighPoint5)
        shapeLayer = creatShapeLayerWith(name: .MenuItem6, and: path)
    }
    
    func addNewTextLayer() {
        textLayer = createTextLayerWith(name: .MenuItem6)
        
    }
    
    func getBounds(value: MenuItem) -> CGRect{
        if shapeLayer.name == value.rawValue {
            return shapeLayer.bounds
        }
        return CGRect()
    }
    
    func getFrame(value: MenuItem) -> CGRect{
        if shapeLayer.name == value.rawValue {
            return shapeLayer.frame
        }
        return shapeLayer.frame
    }
    
    func createTextLayerWith(name: MenuItem) ->CATextLayer {
        let textLayer = CATextLayer()
        textLayer.string = name.rawValue
        // Text Color
        textLayer.foregroundColor = UIColor.white.cgColor
        textLayer.font = UIFont(name: "Avenir", size: 15.0)
        textLayer.fontSize = 15.0
        
        let pathFrame = getFrame(value: .MenuItem6)
        textLayer.alignmentMode = kCAAlignmentLeft
        textLayer.frame = CGRect(x: pathFrame.origin.x + pathFrame.width/8, y: pathFrame.origin.y + pathFrame.height/10.5, width: pathFrame.width, height: pathFrame.height)
        textLayer.contentsScale = UIScreen.main.scale
        self.layer.addSublayer(textLayer)
        return textLayer
    }
    
    func creatShapeLayerWith(name: MenuItem, and path:UIBezierPath) -> CAShapeLayer{
        let shapeLayer = CAShapeLayer()
        shapeLayer.name = name.rawValue
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.lineWidth = 1.0
        shapeLayer.fillColor = UIColor(rgb: 0xd0d9a4).withAlphaComponent(0.8).cgColor
        let pathRect: CGRect = path.bounds
        shapeLayer.bounds = pathRect;
        shapeLayer.position =  CGPoint(x:pathRect.midX, y:pathRect.midY)
        self.layer.addSublayer(shapeLayer)
        return shapeLayer
        
    }
}



