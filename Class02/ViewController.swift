//
//  ViewController.swift
//  Class02
//
//  Created by njcit-03 on 2019/7/6.
//  Copyright © 2019 蒋群芳. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var result : float_t = 10.2
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //我要去超市了
        
        let 如果我去超市 = true
        
        //有橘子
        let 如果看到橘子 = true
        
        if 如果我去超市 {
            var 买西瓜的数量 = 1
            
            
            if 如果看到橘子 {
                买西瓜的数量 = 10
            }
            
            
            
            print("我要买：\(买西瓜的数量)个西瓜")
        }
}

    func add(a : Int, b : Int) -> Int {
        return a + b
    }
}

