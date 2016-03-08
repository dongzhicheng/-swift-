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
      

        
        if let fistNum = Int("4"),secondNumber = Int("42") where fistNum < secondNumber{ //where后边是判断的条件
            
        print("\(fistNum) < \(secondNumber)")
        
        }
        
        
        
    }

}
//where的简单用法
//if let fistNum = Int("4"),secondNumber = Int("42") where fistNum < secondNumber{ //where后边是判断的条件
//    
//    print("\(fistNum) < \(secondNumber)")
//    
//}


//func text3 () {
//    let num2 :Int? = 1234
//    if num2 != nil {
//        print("\(num2!)")//1234  解包！  用 \() 来输出num2的值
//    }
//}

//func text2() {
//    let convertedNumeber = Int(num）//类型转换
//}

//func text1() {
//    let http200Status = (statusCode: 500, description: "OK") // 元祖简单使用
//    print("The status code is \(http200Status.statusCode)")
//}
