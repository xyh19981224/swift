//
//  haodewebView.swift
//  dome5
//
//  Created by 寇凤伟 on 2020/8/14.
//  Copyright © 2020 RX. All rights reserved.
//

import UIKit
import WebKit

class haodewebView: WKWebView {
    
    @IBOutlet weak var web1: WKWebView!
    
    web1.frame = self.view.frame
    let url1 = URL(string: "https://www.jianshu.com/p/9c41202a86f1")
    let reqweb = URLRequest(url: url1!)
    web1.loadRequest(reqweb)
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
