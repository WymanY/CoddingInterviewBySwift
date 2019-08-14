//
//  29-MorethanHalfNum.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/14.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

/*
 数组中次数超过一半的数字
 */
func moreThanHalfNum(nums:[Int]) -> Int? {
    guard nums.isEmpty else {
        return nil
    }
    var result = nums.first!
    var times = 1
    for i in 1..<nums.count {
        if times == 0 {
            result = nums[i]
        } else if result == nums[i] {
            times += 1
        } else {
            times -= 1
        }
    }
    return checkMoreThanHalf(nums: nums, target: result)
}

func checkMoreThanHalf(nums:[Int],target:Int) -> Bool {
    var times = 0
    for val in nums {
        if val == target {
            times += 1
        }
    }
    return times * 2 > nums.count
}
