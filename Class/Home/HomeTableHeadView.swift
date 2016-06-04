//
//  HomeTableHeadView.swift
//  NewBee
//
//  Created by Alonso Zhang on 16/6/4.
//  Copyright © 2016年 Alonso Zhang. All rights reserved.
//

import UIKit

class HomeTableHeadView: UIView {
    
    private var pageScrollView: PageScrollView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        buildPageScrollView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func buildPageScrollView() {
        pageScrollView = PageScrollView(frame: CGRectMake(0, 0, ScreenWidth, 150), placeholder: UIImage(named: "v2_common_footer")!)
        pageScrollView?.imageURLSting = ["aa", "bb", "cc", "dd", "rr"]
        addSubview(pageScrollView!)
    }
    
}
