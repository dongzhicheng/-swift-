//
//  ViewController.swift
//  swift基础语法
//
//  Created by 董志成 on 16/3/8.
//  Copyright © 2016年 董志成. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        let http200Status = (statusCode: 500, description: "OK") // 元祖简单使用
        
        print("The status code is \(http200Status.statusCode)")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

