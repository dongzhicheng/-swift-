//
//  ViewController.swift
//  简单的小案例
//
//  Created by 董志成 on 16/3/9.
//  Copyright © 2016年 董志成. All rights reserved.
//

/*
代理：
    1.定义代理协议(cellDelet)，设置代理方法，
    2.声明代理属性  weak var delegate : cellDelet? //代理属性
    3.如果代理实现了对应的方法自动去调用

   <1>遵循对应的协议
   <2>设置代理
   <3>实现对应的代理方法

*/


import UIKit

class ViewController: UITableViewController,heardImageDelegateProtocol{
    
    func imageCellClick() {
        
        self.navigationController?.pushViewController(secondTabelViewController(), animated: true) //实现代理方法  然后去切换控制器到 secondTabelViewController
        
    }
    
    
    var numZu : [CellModel] = [] //初始化一个数组
     
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setModelData()
        
        
    }
    

    
    func setModelData(){
        
        let image = UIImage()
        
        let imageSecond = UIImage()
        
        let firstCellModel = CellModel(name: "nvli", age: 22, image: image, identify: "TableViewCellIdentif")
        
        let secondCellModel = CellModel(name: "小王", age: 33, image: imageSecond, identify: "secondTableViewCellIdentif")
        
        for var i = 0 ; i < 20 ; i++ {
            
            numZu.append(firstCellModel)
            
            numZu.append(secondCellModel)
        }
        
        
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return numZu.count
    }
    //返回怎样的cell
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let model = numZu[indexPath.row]
 
        let cell = tableView.dequeueReusableCellWithIdentifier(model.identify!, forIndexPath: indexPath) as!TableViewCell
        
        cell.cellModel = self.numZu[indexPath.row]
        
        cell.delegate = self //设置代理
        
        return cell

    }
    
    
}

//对类进行扩展
extension ViewController {

}
