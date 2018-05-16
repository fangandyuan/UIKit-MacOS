//
//  ViewController.swift
//  UIKit-macOS
//
//  Created by 方圆 on 2018/5/16.
//  Copyright © 2018年 yiqi. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    let slider = UISlider(value: 0, minValue: 0, maxValue: 10, target: self, action: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        slider.frame = NSRect(x: 0, y: 0, width: 300, height: 50)
        self.view.addSubview(slider)
        slider.bgColor = NSColor.blue
        slider.progressColor = NSColor.yellow
        slider.cacheValue = 5
        slider.cacheColor = NSColor.red
        
        let slider1 = UISlider(value: 0, minValue: 0, maxValue: 10, target: self, action: nil)
        slider1.frame = NSRect(x: 50, y: 50, width: 50, height: 200)
        self.view.addSubview(slider1)
        slider1.bgColor = NSColor.blue
        slider1.progressColor = NSColor.yellow
        slider1.cacheValue = 5
        slider1.cacheColor = NSColor.red
        slider1.isVertical = true
        
        let click = NSClickGestureRecognizer(target: self, action: #selector(viewClick))
        view.addGestureRecognizer(click)
        
        
    }
    
    @objc func viewClick() {
        slider.cacheValue += 1
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

