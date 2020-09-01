//
//  File.swift
//  Calculator
//
//  Created by 寇凤伟 on 2020/8/6.
//  Copyright © 2020 RX. All rights reserved.
//

import Foundation

public class number{
    private var result:Double = 0
    //数相加
    public func number_jia(digit1:Double ,digit2:Double) -> String{
        result = digit1 + digit1
        return "\(result)"
    
    }
    //数相减
    public func number_jian(digit1:Double ,digit2:Double) -> String{
        result = digit1 - digit2
        return "\(result)"
    }
    //数相乘
    public func number_cheng(digit1:Double ,digit2:Double) -> String{
        result = digit1 * digit2
        return "\(result)"
    }
    //数想除
    public func number_chu(digit1:Double ,digit2:Double) -> String{
        if digit1 == 0{
            return "null"
        }else{
            result = digit1 / digit2
            return "\(result)"
        }
    
    }
}
