//
//  TableViewCell.swift
//  简单的小案例
//
//  Created by 董志成 on 16/3/9.
//  Copyright © 2016年 董志成. All rights reserved.
//

import UIKit

protocol heardImageDelegateProtocol: NSObjectProtocol {
    
    func imageCellClick()
    
}

class TableViewCell: UITableViewCell{
    
    weak var delegate : heardImageDelegateProtocol?
    
    @IBOutlet weak var nameLabel: UILabel! //对应的属性
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var heardIamge: UIImageView!

    var cellModel : CellModel?{ //拥有模型 通过set方法去对Cell中的子空间进行赋值  
    
        didSet{
            
            self.nameLabel.text = cellModel!.name
            
            self.ageLabel.text = String(cellModel!.age)
            
            self.heardIamge.image = cellModel!.image

        
        }
    
    }
    
    override func awakeFromNib() {

        super.awakeFromNib()
        
        heardIamge.userInteractionEnabled = true
        
        let Tap = UITapGestureRecognizer(target: self, action:Selector("tapHandler") )
        
        heardIamge.addGestureRecognizer(Tap)
        
  }
    
    public func tapHandler(){
    
        self.delegate?.imageCellClick()
    
    }

    
}
