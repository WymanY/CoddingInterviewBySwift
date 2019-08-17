//
//  32-NumberOf1Between1AndN.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/17.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

/*
 
 这一题参考这个
 https://blog.csdn.net/yi_Afly/article/details/52012593
 剑指offer的结题思路太怪异
 */
func numOf1Between1AndN(n:Int) -> Int {
    guard n > 1 else {
        return 0
    }
    var count = 0//记录有多少个1
    var base = 1//代表走1round出现几次1
    var round = n
    
    while round > 0 { //第几round。先从个位开始
        let weight = round % 10 //权重就是当前位的数字
        round /= 10
        count += round * base
        if weight == 1 {
            count += n % base + 1
        }
        if weight > 1 {
            count += base
        }
        base *= 10
    }
    return count
}
