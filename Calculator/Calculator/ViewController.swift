//
//  ViewController.swift
//  Calculator
//
//  Created by 寇凤伟 on 2020/8/6.
//  Copyright © 2020 RX. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    @IBOutlet weak var btshan: UIButton!
    @IBOutlet weak var btjia: UIButton!
    @IBOutlet weak var btjian: UIButton!
    @IBOutlet weak var btcheng: UIButton!
    @IBOutlet weak var btchu: UIButton!
    @IBOutlet weak var btdeng: UIButton!
    @IBOutlet weak var btdian: UIButton!
    @IBOutlet weak var bt0: UIButton!
    @IBOutlet weak var bt1: UIButton!
    @IBOutlet weak var bt2: UIButton!
    @IBOutlet weak var bt3: UIButton!
    @IBOutlet weak var bt4: UIButton!
    @IBOutlet weak var bt5: UIButton!
    @IBOutlet weak var bt6: UIButton!
    @IBOutlet weak var bt7: UIButton!
    @IBOutlet weak var bt8: UIButton!
    @IBOutlet weak var bt9: UIButton!
    @IBOutlet weak var xianshi: UITextField!
    
    
    @IBOutlet weak var label1: UILabel!
    
    private func anniu(){
        
        //  0
        //设置圆角
        bt0.clipsToBounds = true
        bt0.layer.cornerRadius = bt0.frame.height / 2
        //设置边框 （宽度、颜色）
        bt0.layer.borderWidth = 1
        bt0.layer.borderColor = UIColor.systemYellow.cgColor
        
        //  1
        bt1.clipsToBounds = true
        bt1.layer.cornerRadius = bt1.frame.height / 2
        bt1.layer.borderWidth = 1
        bt1.layer.borderColor = UIColor.systemYellow.cgColor
        
        //  2
        bt2.clipsToBounds = true
        bt2.layer.cornerRadius = bt2.frame.height / 2
        bt2.layer.borderWidth = 1
        bt2.layer.borderColor = UIColor.systemYellow.cgColor
        
        //  3
        bt3.clipsToBounds = true
        bt3.layer.cornerRadius = bt3.frame.height / 2
        bt3.layer.borderWidth = 1
        bt3.layer.borderColor = UIColor.systemYellow.cgColor
        
        //  删除
        btshan.clipsToBounds = true
        btshan.layer.cornerRadius = btshan.frame.height / 2
        btshan.layer.borderWidth = 1
        btshan.layer.borderColor = UIColor.systemYellow.cgColor
        
        //bt4
        bt4.clipsToBounds = true
        bt4.layer.cornerRadius = bt4.frame.height / 2
        bt4.layer.borderWidth = 1
        bt4.layer.borderColor = UIColor.systemYellow.cgColor
        
        //bt5
        bt5.clipsToBounds = true
        bt5.layer.cornerRadius = bt5.frame.height / 2
        bt5.layer.borderWidth = 1
        bt5.layer.borderColor = UIColor.systemYellow.cgColor
        //bt9
        bt9.clipsToBounds = true
        bt9.layer.cornerRadius = bt9.frame.height / 2
        bt9.layer.borderWidth = 1
        bt9.layer.borderColor = UIColor.systemYellow.cgColor
        //bt8
        bt8.clipsToBounds = true
        bt8.layer.cornerRadius = bt8.frame.height / 2
        bt8.layer.borderWidth = 1
        bt8.layer.borderColor = UIColor.systemYellow.cgColor
        //bt7
        bt7.clipsToBounds = true
        bt7.layer.cornerRadius = bt7.frame.height / 2
        bt7.layer.borderWidth = 1
        bt7.layer.borderColor = UIColor.systemYellow.cgColor
        //bt6
        bt6.clipsToBounds = true
        bt6.layer.cornerRadius = bt6.frame.height / 2
        bt6.layer.borderWidth = 1
        bt6.layer.borderColor = UIColor.systemYellow.cgColor
        //等号
        btdeng.clipsToBounds = true
        btdeng.layer.cornerRadius = btdeng.frame.height / 2
        btdeng.layer.borderWidth = 1
        btdeng.layer.borderColor = UIColor.systemYellow.cgColor
        //小数点
        btdian.clipsToBounds = true
        btdian.layer.cornerRadius = btdian.frame.height / 2
        btdian.layer.borderWidth = 1
        btdian.layer.borderColor = UIColor.systemYellow.cgColor
        //加号
        btjia.clipsToBounds = true
        btjia.layer.cornerRadius = btjia.frame.height / 2
        btjia.layer.borderWidth = 1
        btjia.layer.borderColor = UIColor.systemYellow.cgColor
        //减号
        btjian.clipsToBounds = true
        btjian.layer.cornerRadius = btjian.frame.height / 2
        btjian.layer.borderWidth = 1
        btjian.layer.borderColor = UIColor.systemYellow.cgColor
        //乘号
        btcheng.clipsToBounds = true
        btcheng.layer.cornerRadius = btcheng.frame.height / 2
        btcheng.layer.borderWidth = 1
        btcheng.layer.borderColor = UIColor.systemYellow.cgColor
        //除号
        btchu.clipsToBounds = true
        btchu.layer.cornerRadius = btchu.frame.height / 2
        btchu.layer.borderWidth = 1
        btchu.layer.borderColor = UIColor.systemYellow.cgColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        anniu()
    
        // Do any additional setup after loading the view.
    }
    //按钮点击 输入框改变
    private func txtjia(jiatxt:String){
        if xianshi.text == ""{
            if jiatxt != "."{
                xianshi.text = jiatxt
                return
            }else if jiatxt == "."{
                xianshi.text = "0."
                return
            }
        }
        if xianshi.text != ""{
            if xianshi.text == "0"{
                xianshi.text = jiatxt
                return
            }else{
                xianshi.text = xianshi.text! + jiatxt
                return
            }
        }
        return
    }

    @IBAction func click1(_ sender: UIButton) {
        //var labletxt = xianshi.text
        var clicktxt:String! = sender.titleLabel?.text
        txtjia(jiatxt: clicktxt)
        
    }
    public var baba = shuzi(onenumber: 0, twonumber: 0, fangshi: "")
    @IBAction func cdelete(_ sender: UIButton) {
        xianshi.text = "0"
        baba.onenumber = 0
        baba.twonumber = 0
        baba.fangshi = ""
    }
   
    @IBAction func xuanzhe(_ sender: UIButton) {
           
        var yunsuanfu = sender.titleLabel?.text
        var neirong = NSString(string: self.xianshi.text!)
        
        switch yunsuanfu {
        case "+":
            baba.onenumber = neirong.doubleValue
            baba.fangshi = "+"
            xianshi.text = "0"
            return
        case "-":
            baba.onenumber = neirong.doubleValue
            baba.fangshi = "-"
            xianshi.text = "0"
            return
        case "*":
            baba.onenumber = neirong.doubleValue
            baba.fangshi = "*"
            xianshi.text = "0"
            return
        case "/":
            baba.onenumber = neirong.doubleValue
            baba.fangshi = "/"
            xianshi.text = "0"
            return
        default:
            baba.onenumber = 0
            baba.fangshi = ""
            xianshi.text = "0"
            return
        }
    }
    @IBAction func jisuan(_ sender: UIButton) {
        var neirong = NSString(string: self.xianshi.text!)
        baba.twonumber = neirong.doubleValue
        var snumber = number()
        
        switch baba.fangshi {
        case "+":
            xianshi.text = snumber.number_jia(digit1: baba.onenumber, digit2: baba.twonumber)
            baba.onenumber = 0
            baba.twonumber = 0
            baba.fangshi = ""
            return
        case "-":
            xianshi.text = snumber.number_jian(digit1: baba.onenumber, digit2: baba.twonumber)
                   baba.onenumber = 0
                   baba.twonumber = 0
                   baba.fangshi = ""
                   return
        case "*":
            xianshi.text = snumber.number_cheng(digit1: baba.onenumber, digit2: baba.twonumber)
                   baba.onenumber = 0
                   baba.twonumber = 0
                   baba.fangshi = ""
                   return
        case "/":
            xianshi.text = snumber.number_chu(digit1: baba.onenumber, digit2: baba.twonumber)
                   baba.onenumber = 0
                   baba.twonumber = 0
                   baba.fangshi = ""
                   return
        default:
            xianshi.text = "\(baba.twonumber)"
            baba.twonumber = 0
            return
        }
    }
}

