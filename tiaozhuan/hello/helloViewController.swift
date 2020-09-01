//
//  helloViewController.swift
//  tiaozhuan
//
//  Created by 寇凤伟 on 2020/8/11.
//  Copyright © 2020 RX. All rights reserved.
//

import UIKit

class helloViewController: UIViewController {
    //将UIViewController的子类中的变量全部进行拆包处理，就是在变量声明的时候加一个？号，在使用的时候拆包处理，加一个！号：
    var username:String?
    var password:String?
    
    

    

    @IBOutlet weak var dlbut: UIButton!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var pinglunjs: UILabel!
    override func viewDidLoad() {
        
        //UIAlertController()
        
        print("\(username!)")
        // 按钮添加阴影
        self.dlbut.layer.shadowOpacity = 0.8 //阴影区域透明度
        self.dlbut.layer.shadowRadius = 2.0 //阴影的模糊半径
        self.dlbut.layer.shadowColor = UIColor.black.cgColor //阴影区域颜色
        self.dlbut.layer.shadowOffset = CGSize(width: 1, height: 1)  //阴影区域范围
        self.dlbut.layer.shouldRasterize = true  //给 layer 光栅化 以便复用
        print("++++")
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //dlbut.backgroundColor = UIColor.systemBlue
        //dlbut.setTitleColor(UIColor.systemFill, for: .normal)
        
        
        dlbut.layer.cornerRadius = 5
        //dlbut.layer.masksToBounds = true   加了阴影再切割 就把阴影切割掉了
        
       
    }
    @IBAction func gbbutton(_ sender: UIButton) {
        // 关闭返回 界面
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func dlbutclick(_ sender: UIButton) {
        let sb = UIStoryboard(name: "login1", bundle: nil)
        //withIdentifier参数的值destinationPage是目的页面的Storyboard ID, 这个值在Storyboard里边进行设置。
        let destination = sb.instantiateViewController(withIdentifier: "xxx")
        //let vb = UIStoryboard(name: "login1", bundle: .)
        //destination.message = "传递的信息"
        self.present(destination, animated: true, completion: nil)
        //self.navigationController?.pushViewController(destination , animated: true)
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
