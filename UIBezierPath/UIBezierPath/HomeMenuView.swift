//
//  HomeMenuView.swift
//  UIBezierPath
//
//  Created by Juber Moulvi Abdul on 14/11/17.
//  Copyright © 2017 Juber Moulvi Abdul. All rights reserved.
//

import Foundation
import UIKit

public enum MenuItem : String {
    
    case MenuItem1 = "MenuItem1"
    case MenuItem2 = "MenuItem2"
    case MenuItem3 = "MenuItem3"
    case MenuItem4 = "MenuItem4"
    case MenuItem5 = "MenuItem5"
    case MenuItem6 = "MenuItem6"
    case MenuItem7 = "MenuItem7"
    case MenuItem8 = "MenuItem8"
    case MenuItem9 = "MenuItem9"
    case MenuItem10 = "MenuItem10"
}

class HomeMenuView: UIView {
    
    var shapeLayers = [CAShapeLayer()]
    var textLayers = [CATextLayer()]
    var polygonPath : PolygonPath!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        shapeLayers.removeAll()
        textLayers.removeAll()
        
        self.backgroundColor = UIColor.clear
        
        createAllShapeLayers()
        createAllTextLayers()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
        
    }
    
    func createAllShapeLayers(){
        menuItem1ShapeLayer()
        menuItem2ShapeLayer()
        menuItem3ShapeLayer()
        menuItem4ShapeLayer()
        menuItem5ShapeLayer()
        menuItem6ShapeLayer()
        menuItem7ShapeLayer()
        menuItem8ShapeLayer()
        menuItem9ShapeLayer()
        menuItem10ShapeLayer()
        
    }
    
    func createAllTextLayers(){
        menuItem1TextLayer()
        menuItem2TextLayer()
        menuItem3TextLayer()
        menuItem4TextLayer()
        menuItem5TextLayer()
        menuItem6TextLayer()
        menuItem7TextLayer()
        menuItem8TextLayer()
        menuItem9TextLayer()
        menuItem10TextLayer()
        
        
    }
    
    // MARK: - Settings Shape Layer
    func menuItem1ShapeLayer() {
        polygonPath = PolygonPath()
        let path = polygonPath.drawPolygonWithFivePointsClockwise(pt1: PolygonPoints.menuItem1Point1, pt2: PolygonPoints.menuItem1Point2, pt3: PolygonPoints.menuItem1Point3, pt4: PolygonPoints.menuItem1Point4, pt5: PolygonPoints.menuItem1Point5)
        let shape = creatShapeLayerWith(name: .MenuItem1, and: path)
        shapeLayers.append(shape)
        
    }
    // MARK: - Settings Text Layer
    func menuItem1TextLayer() {
        let textLayer = createTextLayerWith(name: .MenuItem1)
        textLayers.append(textLayer)
    }
    
    // MARK: - Profile Shape Layer
    func menuItem2ShapeLayer(){
        polygonPath = PolygonPath()
        let path = polygonPath.drawPolygonWithFourPointsClockwise(pt1: PolygonPoints.menuItem2Point1, pt2: PolygonPoints.menuItem2Point2, pt3: PolygonPoints.menuItem2Point3, pt4: PolygonPoints.menuItem2Point5)
        let shape = creatShapeLayerWith(name: .MenuItem2, and: path)
        shapeLayers.append(shape)
        
    }
    // MARK: - Profile Text Layer
    func menuItem2TextLayer() {
        let textLayer = createTextLayerWith(name: .MenuItem2)
        textLayers.append(textLayer)
    }
    
    // Goal
    func menuItem3ShapeLayer() {
        polygonPath = PolygonPath()
        let path = polygonPath.drawPolygonWithFivePointsClockwise(pt1: PolygonPoints.menuItem3Point1, pt2: PolygonPoints.menuItem3Point2, pt3: PolygonPoints.menuItem3Point3, pt4: PolygonPoints.menuItem3Point4, pt5: PolygonPoints.menuItem3Point5)
        let shape = creatShapeLayerWith(name: .MenuItem3, and: path)
        shapeLayers.append(shape)
    }
    // MARK: - Goal Text Layer
    func menuItem3TextLayer() {
        let textLayer = createTextLayerWith(name: .MenuItem3)
        textLayers.append(textLayer)
    }
    
    // Notes
    func menuItem4ShapeLayer() {
        polygonPath = PolygonPath()
        let path = polygonPath.drawPolygonWithFivePointsClockwise(pt1: PolygonPoints.menuItem4Point1, pt2: PolygonPoints.menuItem4Point2, pt3: PolygonPoints.menuItem4Point3, pt4: PolygonPoints.menuItem4Point4, pt5: PolygonPoints.menuItem4Point5)
        let shape = creatShapeLayerWith(name: .MenuItem4, and: path)
        shapeLayers.append(shape)
    }
    // MARK: - Notes Text Layer
    func menuItem4TextLayer() {
        let textLayer = createTextLayerWith(name: .MenuItem4)
        textLayers.append(textLayer)
    }
    
    // Tagged Note
    func menuItem5ShapeLayer() {
        polygonPath = PolygonPath()
        let path = polygonPath.drawPolygonWithSixPointsClockwise(pt1: PolygonPoints.menuItem5Point1, pt2: PolygonPoints.menuItem5Point2, pt3: PolygonPoints.menuItem5Point3, pt4: PolygonPoints.menuItem5Point4, pt5: PolygonPoints.menuItem5Point5,pt6:PolygonPoints.menuItem5Point6)
        let shape = creatShapeLayerWith(name: .MenuItem10, and: path)
        shapeLayers.append(shape)
        
    }
    // MARK: - Tagged Note Text Layer
    func menuItem10TextLayer() {
        let textLayer = createTextLayerWith(name: .MenuItem10)
        textLayers.append(textLayer)
    }
    
    // TaggedList
    func menuItem6ShapeLayer() {
        
        polygonPath = PolygonPath()
        let path = polygonPath.drawPolygonWithFourPointsClockwise(pt1: PolygonPoints.menuItem6Point1, pt2: PolygonPoints.menuItem6Point2, pt3: PolygonPoints.menuItem6Point3, pt4: PolygonPoints.menuItem6Point4)
        let shape = creatShapeLayerWith(name: .MenuItem9, and: path)
        shapeLayers.append(shape)
    }
    
    // MARK: - TaggedList Text Layer
    func menuItem5TextLayer() {
        let textLayer = createTextLayerWith(name: .MenuItem9)
        textLayers.append(textLayer)
    }
    
    
    // Today
    func menuItem9ShapeLayer() {
        polygonPath = PolygonPath()
        let path = polygonPath.drawPolygonWithFourPointsClockwise(pt1: PolygonPoints.menuItem7Point1, pt2: PolygonPoints.menuItem7Point2, pt3: PolygonPoints.menuItem7Point3, pt4: PolygonPoints.menuItem7Point4)
        let shape = creatShapeLayerWith(name: .MenuItem8, and: path)
        shapeLayers.append(shape)
    }
    
    // MARK: - Today Text Layer
    func menuItem8TextLayer() {
        let textLayer = createTextLayerWith(name: .MenuItem8)
        textLayers.append(textLayer)
    }
    
    // Spark
    func menuItem10ShapeLayer() {
        polygonPath = PolygonPath()
        let path = polygonPath.drawPolygonWithFivePointsClockwise(pt1: PolygonPoints.menuItem8Point1, pt2: PolygonPoints.menuItem8Point2, pt3: PolygonPoints.menuItem8Point3, pt4: PolygonPoints.menuItem8Point4,pt5:PolygonPoints.menuItem8Point5)
        let shape = creatShapeLayerWith(name: .MenuItem7, and: path)
        shapeLayers.append(shape)
    }
    // MARK: - Spark Text Layer
    func menuItem9TextLayer() {
        let textLayer = createTextLayerWith(name: .MenuItem7)
        textLayers.append(textLayer)
    }
    
    // Add New
    func menuItem7ShapeLayer() {
        
        polygonPath = PolygonPath()
        let path = polygonPath.drawPolygonWithFourPointsClockwise(pt1: PolygonPoints.menuItem9Point1, pt2: PolygonPoints.menuItem9Point2, pt3: PolygonPoints.menuItem9Point3, pt4: PolygonPoints.menuItem9Point4)
        let shape = creatShapeLayerWith(name: .MenuItem6, and: path)
        shapeLayers.append(shape)
        
    }
    // MARK: - Add New Text Layer
    func menuItem6TextLayer() {
        let textLayer = createTextLayerWith(name: .MenuItem6)
        textLayers.append(textLayer)
    }
    
    
    // Lists
    func menuItem8ShapeLayer() {
        
        polygonPath = PolygonPath()
        let path = polygonPath.drawPolygonWithFivePointsClockwise(pt1: PolygonPoints.menuItem10Point1, pt2: PolygonPoints.menuItem10Point2, pt3: PolygonPoints.menuItem10Point3, pt4: PolygonPoints.menuItem10Point4,pt5:PolygonPoints.menuItem10Point5 )
        let shape = creatShapeLayerWith(name: .MenuItem5, and: path)
        shapeLayers.append(shape)
        
    }
    // MARK: - Lists Text Layer
    func menuItem7TextLayer() {
        let textLayer = createTextLayerWith(name: .MenuItem5)
        textLayers.append(textLayer)
    }
    
    // MARK: - Getbounds Function
    func getBounds(value: MenuItem) -> CGRect{
        for shapelayer in shapeLayers {
            if shapelayer.name == value.rawValue {
                return shapelayer.bounds
            }
        }
        return CGRect()
    }
    
    // MARK: - GetFrames Function
    func getFrame(value: MenuItem) -> CGRect{
        
        var shapeLayer = CAShapeLayer()
        for shapelayer in shapeLayers {
            if shapelayer.name == value.rawValue {
                shapeLayer = shapelayer
                break
                
            }
        }
        return shapeLayer.frame
    }
    
    // MARK: - Create TextLayer Function
    func createTextLayerWith(name: MenuItem) ->CATextLayer {
        let textLayer = CATextLayer()
        let fullString = name.rawValue
        let love: String = fullString.replacingOccurrences(of: " ", with: "\n")
        textLayer.string = love
        // Text Color
        textLayer.foregroundColor = UIColor.black.cgColor
        textLayer.font = UIFont(name: "Avenir", size: 15.0)
        textLayer.fontSize = 15.0
        textLayer.masksToBounds = true
        
        let pathFrame = getFrame(value: name)
        textLayer.alignmentMode = kCAAlignmentLeft
        
        switch name {
        case .MenuItem1:
            textLayer.frame = CGRect(x: pathFrame.origin.x + pathFrame.width/3, y: pathFrame.origin.y + pathFrame.height/2, width: pathFrame.width, height: pathFrame.height)
        case .MenuItem2:
            textLayer.frame = CGRect(x: pathFrame.origin.x + pathFrame.width/3, y: pathFrame.origin.y + pathFrame.height/1.5, width: pathFrame.width, height: pathFrame.height)
        case .MenuItem3:
            textLayer.frame = CGRect(x: pathFrame.origin.x + pathFrame.width/8, y: pathFrame.origin.y + pathFrame.height/2.5, width: pathFrame.width, height: pathFrame.height)
        case .MenuItem4:
            textLayer.frame = CGRect(x: pathFrame.origin.x + pathFrame.width/8, y: pathFrame.origin.y + pathFrame.height/2.5, width: pathFrame.width, height: pathFrame.height)
        case .MenuItem10:
            textLayer.frame = CGRect(x: pathFrame.origin.x + pathFrame.width/4, y: pathFrame.origin.y + pathFrame.height/2.5, width: pathFrame.width, height: pathFrame.height)
        case .MenuItem9:
            textLayer.frame = CGRect(x: pathFrame.origin.x + pathFrame.width/2.2, y: pathFrame.origin.y + pathFrame.height/2.5, width: pathFrame.width, height: pathFrame.height)
        case .MenuItem8:
            textLayer.frame = CGRect(x: pathFrame.origin.x + pathFrame.width/8, y: pathFrame.origin.y + pathFrame.height/2.5, width: pathFrame.width, height: pathFrame.height)
        case .MenuItem5:
            textLayer.frame = CGRect(x: pathFrame.origin.x + pathFrame.width/8, y: pathFrame.origin.y + pathFrame.height/2.5, width: pathFrame.width, height: pathFrame.height)
        case .MenuItem6:
            // We need not to split the "ADD NEW" value
            textLayer.string = name.rawValue
            textLayer.frame = CGRect(x: pathFrame.origin.x + pathFrame.width/8, y: pathFrame.origin.y + pathFrame.height/8, width: pathFrame.width, height: pathFrame.height)
        case .MenuItem7:
            textLayer.frame = CGRect(x: pathFrame.origin.x + pathFrame.width/2, y: pathFrame.origin.y + pathFrame.height/2.5, width: pathFrame.width, height: pathFrame.height)
            
        }
        
        textLayer.contentsScale = UIScreen.main.scale
        self.layer.addSublayer(textLayer)
        return textLayer
    }
    
    // MARK: - Create ShapeLayer Function
    func creatShapeLayerWith(name: MenuItem, and path:UIBezierPath) -> CAShapeLayer{
        let shapeLayer = CAShapeLayer()
        shapeLayer.name = name.rawValue
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.lineWidth = 1.0
       
        
        let pathRect: CGRect = path.bounds
        shapeLayer.bounds = pathRect;
        shapeLayer.position =  CGPoint(x:pathRect.midX, y:pathRect.midY)
        
       // shapeLayer.fillColor = UIColor.clear.cgColor
         shapeLayer.fillColor = UIColor.green.cgColor
        self.layer.addSublayer(shapeLayer)
        return shapeLayer
    }
    
}




