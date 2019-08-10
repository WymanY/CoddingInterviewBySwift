//
//  MinNumInRotateArray.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/10.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

/*一趟遍历直接选择最小的数*/
func minNumOf(rotateArray:[Int]) -> Int {
    guard rotateArray.count != 0 else {
        print("array should not be empty")
        return -1
    }
    
    var min = Int.max
    for val in rotateArray {
        if val < min {
            min = val
        }
    }
    return min
}

/*由于规律最大的数之后的一个数一定是最小的*/
func min2NumOf(rotateArray:[Int]) -> Int {
    guard rotateArray.count != 0 else {
        print("array should not be empty")
        return -1
    }
    
    for i in 0..<rotateArray.count {
        if rotateArray[i] > rotateArray[i+1] {
            return rotateArray[i+1]
        }
    }
    
    return rotateArray[0]
    
}


