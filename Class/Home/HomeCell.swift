//
//  HomeCell.swift
//  NewBee
//
//  Created by Alonso Zhang on 16/6/4.
//  Copyright © 2016年 Alonso Zhang. All rights reserved.
//

import UIKit

class HomeCell: UICollectionViewCell {
    
    var backImageView: UIImageView?
    var goodsImageView: UIImageView?
    var name: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("cccc")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}