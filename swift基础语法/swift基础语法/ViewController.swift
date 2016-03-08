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
        

        
        
    }

}
//var welcome = "hello"
//
//welcome.insert("!", atIndex: welcome.endIndex) //在字符串的末尾添加字符
//
//print("\(welcome)")


//        let greeting = "Guten Tag"
//
//        for index in greeting.characters.indices {
//
//            print("\(greeting[index])")


//        let str1 = "hello"
//        let str2 = "there"
//        var welcome = str1 + str2 // 拼接字符串
//        print("\(welcome)")
//



//        for index in 1...5{ // 注意后边是三个点
//
//        print("(index) * 5 = \(index * 5)")
//

//let defautColor = "red"
//var userDefinColor : String?
//var colorNmae = userDefinColor ?? defautColor // 理解像三目 ?? 前边的必须是可选项
//print("\(colorNmae)")

//let num1 = 40
//let num2 = true
//let rowHeight = num1 + (num2 ? 70 : 40) //三目运算符
//print("\(rowHeight)")


//一元正号运算符
//let min = -6
//let minback = +min
//print("\(minback)")

//断言的最基本的格式定义
//let age = -3
//assert(age <= 0, "这是一个断言")

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
