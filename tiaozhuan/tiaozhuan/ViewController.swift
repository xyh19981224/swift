//
//  ViewController.swift
//  tiaozhuan
//
//  Created by 寇凤伟 on 2020/8/10.
//  Copyright © 2020 RX. All rights reserved.
//

import UIKit
import Foundation



class ViewController: UIViewController {

    @IBOutlet weak var mimasrk: UITextField!
    @IBOutlet weak var zhanghaosrk: UITextField!
    @IBOutlet weak var bjkuang: UIView!
    @IBOutlet weak var bjkuang2: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //两个文本框
        //设置光标颜色
        mimasrk.tintColor = UIColor.systemRed
        zhanghaosrk.tintColor = UIColor.systemBlue
        //初始提示语
        mimasrk.placeholder = "必填"
        zhanghaosrk.placeholder = "电子邮箱或手机号"
        // 键盘样式
        zhanghaosrk.keyboardType = UIKeyboardType.emailAddress
        // 文本保护
        mimasrk.isSecureTextEntry = true
        // 键盘颜色
        zhanghaosrk.keyboardAppearance = UIKeyboardAppearance.alert
        
        //设置背景颜色
        self.view.backgroundColor  =  UIColor.systemTeal
        // 设置圆角边框
       
        //
        //self.bjkuang.backgroundColor = UIColor.systemRed
        self.bjkuang.layer.cornerRadius = 10
        self.bjkuang.layer.masksToBounds = true
        self.bjkuang.layer.borderWidth = 1
        self.bjkuang.layer.borderColor = UIColor.orange.cgColor
        
        
        self.bjkuang2.layer.cornerRadius = 10
        self.bjkuang2.layer.masksToBounds = true
        self.bjkuang2.layer.borderWidth = 1
        self.bjkuang2.layer.borderColor = UIColor.orange.cgColor
    }


    @IBAction func dltiaozhuan(_ sender: UIButton) {
        
        
       
        
        
        //let sb = UIStoryboard(name: "helloStoryboard", bundle: nil)
    
        //let newvc:UIViewController! = sb.instantiateViewController(withIdentifier: "zzz")

        //self.navigationController?.pushViewController(newvc, animated: true)
        
        //Main是storyboard的名字
        let sb = UIStoryboard(name: "helloStoryboard", bundle: nil)
        //withIdentifier参数的值destinationPage是目的页面的Storyboard ID, 这个值在Storyboard里边进行设置。
        let destination = sb.instantiateViewController(withIdentifier: "zzz") as! helloViewController
        
        destination.username = zhanghaosrk.text
        destination.password = mimasrk.text
        self.present(destination, animated: true, completion: nil)
        
        
        
        
        //var sb:UIViewController! = helloViewController()
        //self.presentedViewController(sb, animated: true, completion: nil)
        
        
        //self.performSegue(withIdentifier: "zzz", sender: true)
        
    
    }
}

