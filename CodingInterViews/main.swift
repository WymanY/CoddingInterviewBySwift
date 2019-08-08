//
//  main.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/8.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

/*二维数组中的查找*/

/*1暴力解法*/
func findTarget(target:Int, in arr:[[Int]]) -> Bool {
    var isFound = false
    for i in 0..<arr.count {
        for j in 0..<arr[i].count {
            if false == isFound && target == arr[i][j] {
                //已经找到后了没必要在找了
                isFound = true
            }
        }
    }
    return isFound
}

func findTarget2(target:Int, in arr:[[Int]]) -> Bool {
    guard arr.count > 0 else {
        return false
    }
    
    let row = arr.count
    let col = arr.first!.count
    
    //从右上角的元素出发
    var (i,j) = (0,col - 1)
    while (i >= 0 && i < row) && (j >= 0 && j < col) {
        if target == arr[i][j] {
            return true
        } else if target < arr[i][j] {
            j -= 1
        } else {
            i += 1
        }
    }
    return false
    
}


let arr = [
    [1,3,5,7],
    [2,4,6,8],
    [5,9,12,18],
    [9,11,15,21]
]
let target = 19

let b = findTarget2(target: target, in: arr)
print(b)
