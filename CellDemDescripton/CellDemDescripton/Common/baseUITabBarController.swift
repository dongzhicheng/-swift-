


//
//  baseUITabBarController.swift
//  CellDemDescripton
//
//  Created by 董志成 on 16/3/11.
//  Copyright © 2016年 dongzhicheng. All rights reserved.
//

import UIKit

class baseUITabBarController: UITabBarController {

    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.redColor()
        
       addTabVC() //一次性添加自控制器
        
    }
    
    func addTabVC(){
    
        addSubVC(ViewController(), title: "首页", image:"tabbar_home")
    
    }
    
    func addSubVC(childViewController:UIViewController,title: String,image : String){
        
        childViewController.title = title
        
        childViewController.tabBarItem.image = UIImage(named: image)
        
        childViewController.tabBarItem.selectedImage = UIImage(named:"\(image)_highlighted")
        
        let nav = UINavigationController(rootViewController: childViewController) //对于以后的控制器绑定导航控制器
        
        addChildViewController(nav)
        
    }
    
    
    
}
