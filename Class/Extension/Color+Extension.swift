//
//  Color+Extension.swift
//  NewBee
//
//  Created by Alonso Zhang on 16/6/3.
//  Copyright © 2016年 Alonso Zhang. All rights reserved.
//

import UIKit

extension UIColor {
    
    class func colorWithCustom(r: CGFloat, g:CGFloat, b:CGFloat) -> UIColor {
        return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1)
    }
    
}