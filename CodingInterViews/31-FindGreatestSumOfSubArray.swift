//
//  31-FindGreatestSumOfSubArray.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/17.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

/*
 {1,2}
 1,
 2
 {1,2}

 (n * n + 1) / 2
 
 {1,2,3} 3 * 4 / 2 = 6
 1
 2
 3
 1,2
 2,3
 1,2,3
 
 1,2,3,4 = 4 * 5 / 2 = 10
 
 Cn1 + cn2 + cn3 + cn4
 4 + 3  + 2 + 1
 (1 + n) * n / 2
 
 n  + n - 1 + n-2  + n-3 +...1
 
 
 C
 1,
 2,
 3,
 4,
 1,2
 2,3
 3,4
 1,2,3,
 2,3,4,
 1,2,3,4
 
 
 
 
 //n 个数，有多少子数组  n * (n + 1) / 2
 5 * 4 * 3 * 2 * 1  /   2 / 2 = 60
 (N * N + 1) / 2 = 5 * 6 / 2 = 15
 
 第一个数的可能性
 (n + 1) * n
 
 1,2
 1 {}
 2,1
 2,{}
 {},2
 {},1

 n * (n - 1) /2
 
 2 *3  / 2 = 3
 
 {1,-2,3,10,-4,7,2,-5}
 */

func findGreatestSumOfSubArray(arr:[Int]) -> Int? {
    //求出最大的子数组之和
    guard !arr.isEmpty else {
        return nil
    }
    var curSum = 0
    var greatSum = 0
    var i = 0
    while i < arr.count {
        if curSum <= 0 {
            curSum = arr[i]
        } else {
            curSum += arr[i]
        }
        
        if curSum > greatSum {
            greatSum = curSum
        }
        i += 1
    }
    return greatSum
}

