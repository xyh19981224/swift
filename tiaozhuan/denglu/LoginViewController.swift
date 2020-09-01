//
//  login1view.swift
//  tiaozhuan
//
//  Created by 寇凤伟 on 2020/8/10.
//  Copyright © 2020 RX. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var Srkuang: UIView!
    @IBOutlet weak var Srkuang1: UIView!
    override func viewDidLoad() {
        
        Srkuang.layer.cornerRadius = 10
        Srkuang.layer.masksToBounds = true
        Srkuang.layer.borderWidth = 2
        Srkuang.layer.borderColor = UIColor.orange.cgColor
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}
