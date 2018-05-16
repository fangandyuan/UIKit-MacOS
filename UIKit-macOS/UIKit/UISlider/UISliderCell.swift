//
//  UISliderCell.swift
//  ArtPlayer
//
//  Created by 方圆 on 2018/5/15.
//  Copyright © 2018年 yiqi. All rights reserved.
//

import Cocoa

class UISliderCell: NSSliderCell {

    var bgColor : NSColor?
    var progressColor : NSColor?
    var cacheColor : NSColor?
    var cacheValue: Double = 0
    
    override func drawBar(inside rect: NSRect, flipped: Bool) {
        
        if isVertical {
            let marge = rect.minY * 2
            let width = rect.width - 2
            let radius = width * 0.5
            let x = rect.minX + 1
            let bg = NSRect(x: x, y: rect.minY + 0.5, width: width, height: rect.height - 0.5)
            let bgPath = NSBezierPath(roundedRect: bg, xRadius: radius, yRadius: radius)
            bgColor?.setFill()
            bgPath.fill()
            
            if cacheValue != 0  && cacheColor != nil{
                let value = (self.cacheValue - self.minValue) / (self.maxValue - self.minValue)
                let cacheHeight = CGFloat(value) * ((self.controlView?.frame.size.height)! - marge)
                let cacheRect = NSRect(x: x, y: rect.maxY - cacheHeight - 0.5, width: width, height: cacheHeight - 0.5)
                let cachePath = NSBezierPath(roundedRect: cacheRect, xRadius: radius, yRadius: radius)
                cacheColor?.setFill()
                cachePath.fill()
                
            }
            
            let value = (self.doubleValue - self.minValue) / (self.maxValue - self.minValue)
            let finalHeight = CGFloat(value) * ((self.controlView?.frame.size.height)! - marge)
            let progressRect = NSRect(x: x, y: rect.maxY - finalHeight, width: width, height: finalHeight)
            let progressPath = NSBezierPath(roundedRect: progressRect, xRadius: radius, yRadius: radius)
            progressColor?.setFill()
            progressPath.fill()
            
            
        }else {
            let marge = rect.minX * 2
            let height = rect.height - 2
            let radius = height * 0.5
            let x = rect.minX
            let y = rect.minY + 1
            let bg = NSRect(x: x + 0.5, y: y, width: rect.width - 0.5, height: height)
            let bgPath = NSBezierPath(roundedRect: bg, xRadius: radius, yRadius: radius)
            bgColor?.setFill()
            bgPath.fill()
            
            if cacheValue != 0  && cacheColor != nil{
                let value = (self.cacheValue - self.minValue) / (self.maxValue - self.minValue)
                let cacheWidth = CGFloat(value) * ((self.controlView?.frame.size.width)! - marge)
                let cacheRect = NSRect(x: x + 0.5, y: y, width: cacheWidth - 0.5, height: height)
                let cachePath = NSBezierPath(roundedRect: cacheRect, xRadius: radius, yRadius: radius)
                cacheColor?.setFill()
                cachePath.fill()
                
            }
            
            let value = (self.doubleValue - self.minValue) / (self.maxValue - self.minValue)
            let finalWidth = CGFloat(value) * ((self.controlView?.frame.size.width)! - marge)
            let progressRect = NSRect(x: x, y: y, width: finalWidth, height: height)
            let progressPath = NSBezierPath(roundedRect: progressRect, xRadius: radius, yRadius: radius)
            progressColor?.setFill()
            progressPath.fill()
        }
        
    }
}
