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
    private var hotView: HotView?
    weak var delegate: HomeTableHeadViewDelegate?
    
    var tableHeadViewHeight: CGFloat = 0 {
        willSet {
            NSNotificationCenter.defaultCenter().postNotificationName(HomeTableHeadViewHeightDidChange, object: newValue)
            frame = CGRectMake(0, -newValue, ScreenWidth, newValue)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        buildPageScrollView()
        
        buildHotView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: 模型的set方法
    var headData: HeadResources? {
        didSet {
            
            hotView!.headData = headData?.data
        }
    }
    
//    private func buildPageScrollView() {
//        pageScrollView = PageScrollView(frame: CGRectMake(0, 0, ScreenWidth, 150), placeholder: UIImage(named: "v2_common_footer")!)
    
    // MARK: 初始化子控件
    func buildPageScrollView() {
        weak var tmpSelf = self
        pageScrollView = PageScrollView(frame: CGRectZero, placeholder: UIImage(named: "v2_placeholder_full_size")!, focusImageViewClick: { (index) -> Void in
            if tmpSelf!.delegate != nil && ((tmpSelf!.delegate?.respondsToSelector(#selector(HomeTableHeadViewDelegate.tableHeadView(_:focusImageViewClick:)))) != nil) {
                tmpSelf!.delegate!.tableHeadView!(tmpSelf!, focusImageViewClick: index)
            }
        })
        pageScrollView?.imageURLSting = ["aa", "bb", "cc", "dd", "rr"]
        addSubview(pageScrollView!)
    }
    
    func buildHotView() {
        weak var tmpSelf = self
        hotView = HotView(frame: CGRectZero, iconClick: { (index) -> Void in
            if tmpSelf!.delegate != nil && ((tmpSelf!.delegate?.respondsToSelector(#selector(HomeTableHeadViewDelegate.tableHeadView(_:iconClick:)))) != nil) {
                tmpSelf!.delegate!.tableHeadView!(tmpSelf!, focusImageViewClick: index)
            }
        })
        hotView?.backgroundColor = UIColor.whiteColor()
        addSubview(hotView!)
    }
    
    //MARK: 布局子控件
    override func layoutSubviews() {
        super.layoutSubviews()
        
        pageScrollView?.frame = CGRectMake(0, 0, ScreenWidth, ScreenWidth * 0.31)
        
        hotView?.frame.origin = CGPointMake(0, CGRectGetMaxY((pageScrollView?.frame)!))
        
        tableHeadViewHeight = CGRectGetMaxY(hotView!.frame)
    }
}

// - MARK: Delegate
@objc protocol HomeTableHeadViewDelegate: NSObjectProtocol {
    optional func tableHeadView(headView: HomeTableHeadView, focusImageViewClick index: Int)
    optional func tableHeadView(headView: HomeTableHeadView, iconClick index: Int)
    
}
