//
//  ViewController.swift
//  dome5
//
//  Created by 寇凤伟 on 2020/8/14.
//  Copyright © 2020 RX. All rights reserved.
//

import UIKit
import WebKit


class ViewController: UIViewController {
    func aaaaaaa(_ uswitch:UISwitch){
        print("1111111111111")
    }

    //@IBOutlet weak var web2: UIWebView!   弃用
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //  渐变填充
        let jianbianlayer = CAGradientLayer()
        jianbianlayer.frame = self.view.frame
        
        let maxColor = UIColor.red.cgColor
        let midColor = UIColor.green.cgColor
        let minColor = UIColor.blue.cgColor
        //可多数组
        jianbianlayer.colors = [maxColor , midColor, minColor]
        view.layer.addSublayer(jianbianlayer)
        
        // 纹理填充
        let image = UIImage(named: "sc1")
        self.view.backgroundColor = UIColor.init(patternImage: image!)
        
        //网页控件
        //web2.frame = self.view.frame
        //let url1 = URL(string: "https://www.jianshu.com/p/9c41202a86f1")
        //let reqweb = URLRequest(url: url1!)
        //web2.loadRequest(reqweb)
        let fweb = CGRect(x: 0, y: self.view.frame.midY, width: self.view.frame.width, height: self.view.frame.height / 2)
        let web1 = WKWebView(frame: fweb)
        let url1 = URL(string: "https://www.w3cschool.cn")
        let reqweb = URLRequest(url: url1!)
        web1.load(reqweb)
        self.view.addSubview(web1)
        
        
        //文本控件
        let flabel = CGRect(x: 50, y: 50, width: 100, height: 100)
        let label = UILabel(frame: flabel)
        label.text = "测试\n省略多少字。趣味儿童与i哦枇杷上市的风格很快乐了朝夕相处从v把v不能呢"
        label.backgroundColor = UIColor.red
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.center
        
        //默认省略多出的字
        
        //显示固定的字，框多大就显示多少字
        //label.lineBreakMode = NSLineBreakMode.byCharWrapping
        
        //label.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        //label.lineBreakMode = NSLineBreakMode.byClipping
        
        //把中间多出的字省略掉
        //label.lineBreakMode = NSLineBreakMode.byTruncatingHead
        
        //label.lineBreakMode = NSLineBreakMode.byTruncatingMiddle
        
        //把后边多余的字省略掉
        label.lineBreakMode = NSLineBreakMode.byTruncatingTail
        
        label.numberOfLines = 0
        self.view.addSubview(label)
        
        //选择控件
        
        let fswitch = CGRect(x: 200, y: 100, width: 0, height: 0)
        let uswitch = UISwitch(frame: fswitch)
        uswitch.setOn(true, animated: false)
        //uswitch.addTarget(self, action: #selector(ViewController.bbbbb(_:)), for: UIControl.Event.valueChanged)
        uswitch.addTarget(self, action: #selector(cccc(_:)), for: UIControl.Event.valueChanged)
        //Selector(extendedGraphemeClusterLiteral: <#T##String#>)
        self.view.addSubview(uswitch)
        
        
    }
    
    @IBAction func bbbbb(_ sender: UISwitch) {
        print(sender.isOn)
        print("bbbbbbbbbb")
    }
    @objc func cccc(_ sender: UISwitch) {
        print(sender.isOn)
        print("bbbbbbbbbb")
    }
    
}

