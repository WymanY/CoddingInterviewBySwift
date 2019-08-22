//
//  38-GetFirstK.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/22.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

/*
 38-数字在排序数组中出现的次数
 题目：统计一个数字在排序数组中出现的次数，例如输入排序数组 {1,2,3,3,3,3,4,5}和数字3
 由于3在这个数组中出现了4次，因此输出4
 注意：需要时间复杂度小于O(N)
 这里的思路是查找第一个K元素，和最后一个K元素的下标，从而
 */


func getNumberOfK(arr:[Int],k:Int) -> Int {
    guard  !arr.isEmpty else {
        return -1
    }
    let first = getFirstK(arr: arr, k: k, start: 0, end: arr.count - 1)
    let last = getLastK(arr: arr, k: k, start: 0, end: arr.count - 1)
    if first > -1 && last > -1 {
        return last - first + 1
    }
    return 0
}

private func getFirstK(arr:[Int],k:Int,start:Int,end:Int) -> Int {
    var left = start
    var right = end
    if left > right {
        return -1
    }
    let midIndex = (left + right) / 2
    let midData = arr[midIndex]
    if midData == k {
        if (midIndex > 0 && arr[midIndex - 1] != k) || midIndex == 0 {
            return midIndex
        } else {
            right = midIndex - 1
        }
    } else if midData > k {
        right = midIndex - 1
    } else {
        left = midIndex + 1
    }
    return getFirstK(arr: arr, k: k, start: left, end: right)
}

private func getLastK(arr:[Int],k:Int,start:Int,end:Int) -> Int {
    var left = start
    var right = end
    if left > right {
        return -1
    }
    let midIndex = (left + right) / 2
    let midData = arr[midIndex]
    if midData == k {
        if (midIndex < arr.count - 1 && arr[midIndex + 1] != k) || midIndex == arr.count - 1 {
            return midIndex
        } else {
            right = midIndex - 1
        }
    } else if midData > k {
        right = midIndex - 1
    } else {
        left = midIndex + 1
    }
    return getLastK(arr: arr, k: k, start: left, end: right)
    
}
