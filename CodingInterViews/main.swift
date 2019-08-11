//
//  main.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/8.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

extension String {
    subscript (i:Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
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


//let  ret = power(1.2, exponent: -2)
//print(ret)
 
//打印从 1到最大的N位数
var s = Soultion(2)
s.printN()
 
 //14重新排序数租
var arr = [1,3,5,4,7,6,9,12,21];
var a2 = reOrderArray2(arr: arr)
print(a2)

 //15.链表倒数第K 个节点
let h =  buildListFrom(arr: [12,10,5,8,9])
let node =  findKthNodeToTail(root: h, k: 10)
print(node?.val)
 
 */

