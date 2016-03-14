//
//  baseTabBar.swift
//  CellDemDescripton
//
//  Created by 董志成 on 16/3/11.
//  Copyright © 2016年 dongzhicheng. All rights reserved.
//

import UIKit

class baseTabBar: UITabBar {
    
    
   override init(frame: CGRect) {
        
        super.init(frame: frame)
    
        setupUI()
    
    }

   required init?(coder aDecoder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
   }
    
     func setupUI(){
    
        addSubview(composeButton)
    }
    
    override func layoutSubviews() { 
        
         composeButton.center = CGPointMake(bounds.width * 0.5, bounds.height * 0.5)
        
    }
    
    
   
    lazy var composeButton: UIButton = {
        
        let button = UIButton(type: UIButtonType.Custom)
    
        button.setBackgroundImage(UIImage(named: "tabbar_compose_button"), forState: UIControlState.Normal)
        
        button.setBackgroundImage(UIImage(named: "tabbar_compose_button_highlighted"), forState: UIControlState.Highlighted)
        
        button.setImage(UIImage(named: "tabbar_compose_icon_add"), forState: UIControlState.Normal)
        
        button.setImage(UIImage(named: "tabbar_compose_icon_add_highlighted"), forState: UIControlState.Highlighted)
        
       
        button.sizeToFit()
        
        return button
        
    }()


}
