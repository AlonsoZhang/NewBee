//
//  UIBarButtonItem+Extension.swift
//  NewBee
//
//  Created by Alonso Zhang on 16/6/4.
//  Copyright © 2016年 Alonso Zhang. All rights reserved.
//

import UIKit

enum ItemButtonType: Int {
    case Left = 0
    case Right = 1
}

extension UIBarButtonItem {
    
    class func barButton(title: String, titleColor: UIColor, image: UIImage, hightLightImage: UIImage?, target: AnyObject?, action: Selector, type: ItemButtonType) -> UIBarButtonItem {
        var btn:UIButton = UIButton()
        if type == ItemButtonType.Left {
            btn = ItemLeftButton(type: .Custom)
        } else {
            btn = ItemRightButton(type: .Custom)
        }
        btn.setTitle(title, forState: .Normal)
        btn.setImage(image, forState: .Normal)
        btn.setTitleColor(titleColor, forState: .Normal)
        btn.setImage(hightLightImage, forState: .Highlighted)
        btn.addTarget(target, action: action, forControlEvents: .TouchUpInside)
        btn.frame = CGRectMake(0, 0, 60, 44)
        btn.titleLabel?.font = UIFont.systemFontOfSize(10)
        
        return UIBarButtonItem(customView: btn)
    }
}