//
//  ViewController.swift
//  demo1
//
//  Created by 寇凤伟 on 2020/8/6.
//  Copyright © 2020 RX. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    
    override func viewDidLoad() {
        //设置label 的背景颜色
        label1.backgroundColor = UIColor.green
        // 设置label  的字体颜色
        label1.textColor = UIColor.red
        // 设置label的字体和字号
        label1.font = UIFont.boldSystemFont(ofSize: 25)
        // 设置字体对齐方式
            /*
         left ：左对齐
         center ：居中
         right ： 右对齐
         natural ：本地化
         */
        label1.textAlignment = NSTextAlignment.center
        
        //设置行数
        label1.numberOfLines = 0
        //调整文字大小用于完全显示文本内容
        label1.adjustsFontSizeToFitWidth = true
        // 缩小字间距以完全显示文本内容
        label1.allowsDefaultTighteningForTruncation = true
        
        label1.frame = CGRect(x: 50, y: 50, width: 100, height: 50)
        
        //设置阴影颜色(文字)
        label1.shadowColor = UIColor.systemRed
        //设置阴影偏移量
        label1.shadowOffset = CGSize(width: 2, height: 2)
        
        
        //
        bb1.adjustsImageWhenDisabled = true
        bb1.adjustsImageWhenHighlighted = true
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBOutlet weak var mylabel: UILabel!
    @IBOutlet weak var bb1: UIButton!
    
    @IBAction func bu1(_ sender: UIButton) {
        mylabel.text = "好了"
    }
    @IBAction func bu2(_ sender: UIButton) {
        mylabel.text = "一号"
        bb1.backgroundColor = UIColor.gray
        
    }
    @IBAction func tanchuang(_ sender: UIButton) {
        
        //弹框提示
        let alert = UIAlertController(title: "错误", message: "", preferredStyle: .actionSheet)
        //弹框按钮
        let okaction = UIAlertAction(title: "去热", style: .cancel, handler: nil)
        alert.addAction(okaction)
        self.present(alert, animated: true, completion: nil)
        //几秒后自动消失
        
        //代码延迟执行
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5) {
            self.presentedViewController?.dismiss(animated: false, completion: nil)
        }
    }
}

