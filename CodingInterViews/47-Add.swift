//
//  47-Add.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/18.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

/*
 47-不用加减乘除做加法
 思路：加减乘除运算不可以使用，这个时候只能考虑成与之相似的二进制位运算。
 5的二进制101，
 17的二进制10001
 
 1 +1 = 0会产生进位
 1 + 0 = 1 ， 0 + 1 = 0， 0 + 0 = 0， 1 + 1 = 0，正好与^异或运算类似，这个时候
 产生进位
 */

func add(num1:Int,num2:Int) -> Int {
    var n1 = num1
    var n2 = num2
    var (sum,carry) = (0,0)
    repeat {
        sum = n1 ^ n2
        carry = (n1 & n2) << 1
        n1 = sum
        n2 = carry
    } while num2 != 0
    return sum
}
