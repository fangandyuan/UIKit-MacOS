//
//  UISlider.swift
//  ArtPlayer
//
//  Created by 方圆 on 2018/5/15.
//  Copyright © 2018年 yiqi. All rights reserved.
//

import Cocoa

public class UISlider: NSSlider {

    public var bgColor : NSColor?  {
        willSet {
            let artCell = cell as! UISliderCell
            artCell.bgColor = newValue
        }
    }
    public var progressColor : NSColor?{
        willSet {
            let artCell = cell as! UISliderCell
            artCell.progressColor = newValue
        }
    }
    public var cacheColor : NSColor?{
        willSet {
            let artCell = cell as! UISliderCell
            artCell.cacheColor = newValue
        }
    }
    
    public var cacheValue : Double = 0{
        willSet {
            let artCell = cell as! UISliderCell
            artCell.cacheValue = newValue
            self.setNeedsDisplay()
        }
    }
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        cell = UISliderCell()
    }
    
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override public func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        
    }
    
}
