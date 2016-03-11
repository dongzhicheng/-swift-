//
//  CellModel.swift
//  简单小案例1
//
//  Created by 董志成 on 16/3/11.
//  Copyright © 2016年 董志成. All rights reserved.
//

import UIKit

class CellModel: NSObject {
    
    var image : UIImage?

    var name : String?
    
    var age : Int = 0
    
    var identify : String?
    
    init(name : String , age : Int , image : UIImage,identify : String ) { // 自定义构造方法
        
        self.name = name
        
        self.age  = age
        
        self.identify = identify
        
        self.image = image
        
    }
    
    
}
