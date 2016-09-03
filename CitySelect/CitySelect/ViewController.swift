//
//  ViewController.swift
//  CitySelect
//
//  Created by 李志宇 on 16/9/3.
//  Copyright © 2016年 izijia. All rights reserved.
//

import UIKit

class ViewController: UIViewController,CitySelectTableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let btn = UIButton.init(frame: CGRectMake(100, 100, 200, 100))
        btn.backgroundColor = UIColor.redColor()
        btn.setTitle("城市选择", forState:UIControlState.Normal)
        btn.addTarget(self, action: #selector(self.gotoCity), forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(btn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func gotoCity(){
        
       let  citySelectViewController = CitySelectTableViewController.createCitySelectTableViewController({ (citySelectTableViewController) in
            citySelectTableViewController.selectType = citySelectType.city
            citySelectTableViewController.delegate = self
        })
    
        self.navigationController?.pushViewController(citySelectViewController, animated: true)
        
    }
    
    //选择后的城市
    func selectedCity(city:CitySelectedCity?){
    
        print(city?.cityName)
    }


}

