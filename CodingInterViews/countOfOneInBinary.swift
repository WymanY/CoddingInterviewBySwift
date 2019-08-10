//
//  countOfOneInBinary.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/10.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation
/*10。二进制中的一的数据*/

//第一方式使用移位，但是对负数的效果不好
func countOf1(num:Int) -> Int {
    var n = num
    var count = 0
    while n != 0 {
        if n & 1 == 1 {
            count += 1
        }
        n = n >> 1
    }
    return count
}

//通过使用flag，来移位，01，10，100,从而去获取第一位1，第二位1，第三位1
// 10001
//&0010
func countOf2(num:Int) -> Int {
    var flag = 1
    var count = 0
    
    while flag != 0 {
        if num & flag >= 1 {
            count += 1
        }
        flag <<= 1
    }
    return count
}

/*
 由于n: 1011 & 1010 = 1010,每次都可以消除一个1,
 1010 & 1001 = 1000.再次消掉一个 1
 1000 & 0111 ，最后消掉一个 1
 */

func countOf3(num:Int) -> Int {
    var count = 0
    var n = num
    while  n != 0 {
        count += 1
        n = n & (n-1)
    }
    return count
}
