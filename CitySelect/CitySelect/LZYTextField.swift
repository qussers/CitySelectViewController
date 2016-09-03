//
//  LZYTextField.swift
//  Exchange_S
//
//  Created by 李志宇 on 16/7/12.
//  Copyright © 2016年 izijia. All rights reserved.
//

/***
 说明:此类的定义便于一些全局操作
    1.键盘的隐藏

 */

import UIKit

class LZYTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        //添加
        NSNotificationCenter.defaultCenter().addObserver(self, selector:#selector(self.hidenKeyBoard) , name: HideTextFieldKeyboardNotification, object: nil)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //隐藏键盘
    func hidenKeyBoard(){
        self.resignFirstResponder()
    }

}
