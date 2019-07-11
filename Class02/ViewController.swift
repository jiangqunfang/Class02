//
//  ViewController.swift
//  Class02
//
//  Created by njcit-03 on 2019/7/6.
//  Copyright © 2019 蒋群芳. All rights reserved.
//

//import UIKit
//
//class ViewController: UIViewController {
//    @IBOutlet weak var lbMsg: UILabel!
//
//    var result : float_t = 10.2
//
//    @IBAction func btnTestCllicked(_ sender: UIButton)
//    {
//        print("我按了啥?")
//
//        lbMsg.text = "我要草莓"
//        lbMsg.textColor = UIColor.red
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        //我要去超市了
//
//        let 如果我去超市 = true
//
//        //有橘子
//        let 如果看到橘子 = true
//
//        if 如果我去超市 {
//            var 买西瓜的数量 = 1
//
//
//            if 如果看到橘子 {
//                买西瓜的数量 = 10
//            }
//
//
//
//            print("我要买：\(买西瓜的数量)个西瓜")
//        }
//}
//
//    func add(a : Int, b : Int) -> Int {
//        return a + b
//    }
//}








//  ViewController.swift
//  Class04
//
//  Created by iMAC on 2019/7/10.
//  Copyright © 2019 iMACbrave. All rights reserved.
//

import UIKit

class ViewController: UIViewController,AsyncReponseDelegate{
    func receviedReponse(_ sender: AsyncRequestWorker, responseString: String, tag: Int) {
        
        print(responseString)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let worker:AsyncRequestWorker = AsyncRequestWorker()
        worker.reponseDelegate = self
        worker.取得回应(from: "https://google.com", tag: 1)
        
        NotificationCenter.default.addObserver(self, selector:#selector(收到远端讯息(notification:)) , name: NSNotification.Name("response.received"), object: nil)
        
                NotificationCenter.default.addObserver(self, selector: #selector(收到远端讯息(notification:)), name: UIResponder.keyboardWillShowNotification , object:nil)
        
        
    }
    // .tencent.com
    @objc func 收到远端讯息(notification: NSNotification) {
        let hope = notification.userInfo!["response"]
        print(hope)
        
        
    }
    
    
}
