//
//  MainTabBarController.swift
//  NewBee
//
//  Created by Alonso Zhang on 16/6/3.
//  Copyright © 2016年 Alonso Zhang. All rights reserved.
//

import UIKit

class MainTabBarController: RAMAnimatedTabBarController {
    
    private var fristLoad: Bool = false
    
    // MARK:- view life circle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildMainTabBarChildViewController()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        //判断初次登录
        if fristLoad == false {
            let containers = createViewContainers()
            
            createCustomIcons(containers)
            fristLoad = true
        }
    }
    
    override func addChildViewController(childController: UIViewController) {
        super.addChildViewController(childController)
    }
    
    // MARK: 初始化tabbar
    private func buildMainTabBarChildViewController() {
        tabBarControllerAddChildViewController(HomeViewController(), title: "首页", imageName: "v2_home", selectedImageName: "v2_home_r")
        tabBarControllerAddChildViewController(SupermarketViewController(), title: "闪电超市", imageName: "v2_order", selectedImageName: "v2_order_r")
        tabBarControllerAddChildViewController(ScheduleViewController(), title: "新鲜预定", imageName: "freshReservation", selectedImageName: "freshReservation_r")
        tabBarControllerAddChildViewController(ShopCartViewController(), title: "购物车", imageName: "shopCart", selectedImageName: "shopCart_r")
        tabBarControllerAddChildViewController(MineViewController(), title: "我的", imageName: "v2_my", selectedImageName: "v2_my_r")
    }
    
    private func tabBarControllerAddChildViewController(childView: UIViewController, title: String, imageName: String, selectedImageName: String) {
        let vcItem = RAMAnimatedTabBarItem(title: title, image: UIImage(named: imageName), selectedImage: UIImage(named: selectedImageName))
        vcItem.animation = RAMBounceAnimation()
        childView.tabBarItem = vcItem
        
        let navigationVC = BaseNavigationController(rootViewController:childView)
        navigationVC.navigationBar.backgroundColor = UIColor.redColor()
        addChildViewController(navigationVC)
    }

}