//
//  main.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/8.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

extension String {
    subscript (i:Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}

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

/*
let arr = [
    [1,3,5,7],
    [2,4,6,8],
    [5,9,12,18],
    [9,11,15,21]
]
//1
let target = 19
let b = findTarget2(target: target, in: arr)

//2
var str = "zhang san hao"
let noBlankStr =  replaceSpace(str: str)
print(noBlankStr)

//3

let h =  buildListFrom(arr: [10,12,18,17])
printListFromTailToHead(root: h)
 //4
let preOrder = [1,2,4,7,3,5,6,8]
let inOrder = [4,7,2,1,5,3,8,6]
let h =  rebuildBinaryTree(preOrder: preOrder, inOrder: inOrder)
 

//使用两个栈实现队列
var q = Queue()
q.push(node: 2)
q.push(node: 3)
q.push(node: 4)
var pop =  q.pop()
q.push(node: 6)
pop = q.pop()
_ = q.pop()
_ = q.pop()
q.push(node: 12)
_ = q.pop()
 

//旋转数组中的最小的值
let min =  minNumOf(rotateArray: [4,5,6,91,2,3])
print(min)
 
//二进制中的1的数目
let n = countOf2(num: -11)
print(n)

 */

let  ret = power(1.2, exponent: -2)
print(ret)


