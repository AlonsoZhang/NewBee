//
//  ProgressHUDManager.swift
//  NewBee
//
//  Created by Alonso Zhang on 16/6/6.
//  Copyright © 2016年 Alonso Zhang. All rights reserved.
//

import UIKit


class ProgressHUDManager {
    
    class func setBackgroundColor(color: UIColor) {
        SVProgressHUD.setBackgroundColor(color)
    }
    
    class func setForegroundColor(color: UIColor) {
        SVProgressHUD.setForegroundColor(color)
    }
    
    class func setSuccessImage(image: UIImage) {
        SVProgressHUD.setSuccessImage(image)
    }
    
    class func setErrorImage(image: UIImage) {
        SVProgressHUD.setErrorImage(image)
    }
    
    class func setFont(font: UIFont) {
        SVProgressHUD.setFont(UIFont.systemFontOfSize(16))
    }
    
    class func showImage(image: UIImage, status: String) {
        SVProgressHUD.showImage(image, status: status)
    }
    
}