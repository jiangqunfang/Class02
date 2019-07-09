//
//  BViewController.swift
//  Class02
//
//  Created by njcit-03 on 2019/7/9.
//  Copyright © 2019 蒋群芳. All rights reserved.
//

import UIKit

class BViewController: UIViewController {

    @IBOutlet weak var lbMsg: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnTestCllicked(_ sender: UIButton)
    {
        print("我按了啥?")
        
        lbMsg.text = "我要芒果"
        lbMsg.textColor = UIColor.red
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
