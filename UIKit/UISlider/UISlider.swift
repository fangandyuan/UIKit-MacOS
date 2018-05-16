//
//  UISlider.swift
//  ArtPlayer
//
//  Created by 方圆 on 2018/5/15.
//  Copyright © 2018年 yiqi. All rights reserved.
//

import Cocoa

class UISlider: NSSlider {

    var bgColor : NSColor?  {
        willSet {
            let artCell = cell as! UISliderCell
            artCell.bgColor = newValue
        }
    }
    var progressColor : NSColor?{
        willSet {
            let artCell = cell as! UISliderCell
            artCell.progressColor = newValue
        }
    }
    var cacheColor : NSColor?{
        willSet {
            let artCell = cell as! UISliderCell
            artCell.cacheColor = newValue
        }
    }
    
    var cacheValue : Double = 0{
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
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        
    }
    
}
