//
//  14-ReOrderArray.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/10.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation
/*
 014-调整数组顺序使奇数位于偶数前面
 题目描述
 
 输入一个整数数组，实现一个函数来调整该数组中数字的顺序，使得所有的奇数位于数组的前半部分，所有的偶数位于位于数组的后半部分，并保证奇数和奇数，偶数和偶数之间的相对位置不变。
 
 样例输入
 
 5 1 2 3 4 5
 
 样例输出
 
 1 3 5 2 4
下面我们考虑算法复杂度的同时还会考虑其稳定性，（排序的稳定型则是指相同元素在数组中的相对位置是否发生变化），这里的稳定性我们理解为，顺序交换后，各个奇数（或者偶数）在数组中的相对位置是否发生变化
 */

/*
 1.暴力解法，循环一遍发现偶数就移到最后，然后数组整个往前移动一位。复杂度o(n^2)
 冒泡排序，每次循环前偶后奇就交换
 原始数据: 1,3,4,5,8,9
 第一趟：  1,3,5,4,9,8
 第二趟：  1,3,5,9,4,8
 
 */
func reOrderArray(arr:[Int]) -> [Int] {
    guard arr.count >= 1 else {
        return arr
    }
    var a = arr
    var isSwap = false
    var i = 0
    while i < a.count {
        defer { i += 1}
        isSwap = false
        var j = a.count - 1
        while j > i {
            defer { j -= 1 }
            if a[j] % 2 == 1 && a[j-1] % 2 == 0 {
                a.swapAt(j, j-1)
                isSwap = true
            }
        }
        if isSwap == false {
            break
        }
    }
    return a        
}

/*
 我们也可以利用一个辅助的数组空间来实现
 
 在原来的数组中遇到偶数就放进新数组中，然后将该偶数从原来数组中删除，当整个遍历结束后，原来数组中只剩下奇数，新的数组总只剩下偶数，最后我们将新的数组追加在原来数组的末尾即可
 */

func reOrderArray2(arr:[Int]) -> [Int] {
    guard arr.count > 1 else {
        return arr
    }
    var evenArr = [Int]()
    for val in arr {
        if val % 2 == 0 {
            evenArr.append(val)
        }
    }
    var a = arr
    a =  a.filter {!evenArr.contains($0)}
    a += evenArr
    return a
}


