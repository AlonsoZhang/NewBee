//
//  String + Extension.swift
//  NewBee
//
//  Created by Alonso Zhang on 16/6/6.
//  Copyright © 2016年 Alonso Zhang. All rights reserved.
//

import UIKit

extension String {
    
    /// 清除字符串小数点末尾的0
    func cleanDecimalPointZear() -> String {
        
        let newStr = self as NSString
        var s = NSString()
        
        var offset = newStr.length - 1
        while offset > 0 {
            s = newStr.substringWithRange(NSMakeRange(offset, 1))
            if s.isEqualToString("0") || s.isEqualToString(".") {
                offset -= 1
            } else {
                break
            }
        }
        
        return newStr.substringToIndex(offset + 1)
    }
}