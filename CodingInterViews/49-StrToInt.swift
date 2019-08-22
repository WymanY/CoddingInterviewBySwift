//
//  49-!StrToInt.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/18.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation
enum Status {
    case vaild
    case invalid
}
var status = Status.vaild

/*
 注意边界情况，
 1.只有正负号的时候。
 2.数字中存在异常字符的时候。
 3.超过Int的最大和最小值
 4.空制符
 
 */
func strToInt(str:[Character]) -> Int? {
    if  str.isEmpty {
        status = .invalid
        return 0
    }
    var num = 0
    var index = 0
    var minus  = false
    if str[index] == "+" {
        index += 1
    } else if str[index] == "-" {
        index += 1
        minus = true
    }
    
    while index < str.count{
        if str[index] < "0" || str[index] > "9" {
            num = 0
            status = .invalid
            return num
        } else {
            num  =  num * 10 + Int(str[index].asciiValue! - "0".first!.asciiValue!)
        }
        index += 1
    }
    if minus {
        num = 0 - num
    }
    
    return num
}
