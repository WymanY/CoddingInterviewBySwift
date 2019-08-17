//
//  30-GetLeastKNums.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/14.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

/*
 最小的k个数
 */

//1,2,12,5,8,51,7,39
//1,2,12,
//1,2,5,8,7,12,51,39

func getLeastNums(input:[Int],k:Int) -> [Int]? {
    guard !input.isEmpty && k < input.count else {
        return nil
    }
    var nums = input
    var start = 0
    var end = input.count - 1
    
    var index =  partion(input: &nums, start: start, end: end)
    while index != k - 1 {
        if index > k - 1 {
            end = index - 1
            index = partion(input: &nums, start: start, end: end)
        } else {
            start = index + 1
            index = partion(input: &nums, start: start, end: end)
        }
    }
    var i = 0
    var output = [Int]()
    while i < k {
        output.append(nums[i])
        i += 1
    }
    return output
}

func partion(input:inout [Int],start:Int,end:Int) -> Int {
    
    let pivoteNum = input[start]
    
    var left = start
    var right = end
    
    while left < right{
        while left < right && input[right] >= pivoteNum {
            right -= 1
        }
        input[left] = input[right]
        
        while left < right && input[left] <= pivoteNum {
            left += 1
        }
        input[right] = input[left]
    }
    input[left] = pivoteNum;
    return left
}
