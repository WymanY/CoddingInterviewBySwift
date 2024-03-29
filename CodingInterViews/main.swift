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

public class TreeNode: Equatable {
    var value:Int
    weak var parent:TreeNode?
    var childRen = [TreeNode]()
    init(value:Int) {
        self.value = value
    }
    
    func addChildren(_ node:TreeNode) {
        childRen.append(node)
        node.parent = self
    }
    
    public static func ==(lhs:TreeNode,rhs:TreeNode)->Bool {
        if lhs.value == rhs.value && lhs.childRen == rhs.childRen {
            return true
        }
        return false
    }
    
}

public class BinaryTreeNode: Equatable {
    var val:Int
    var left:BinaryTreeNode?
    var right:BinaryTreeNode?
    
    init(val:Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    
    public static func ==(lhs:BinaryTreeNode,rhs:BinaryTreeNode) -> Bool {
        guard lhs.val == rhs.val && lhs.left == rhs.left && lhs.right == rhs.right else {
            return false
        }
        return true
    }
}

public class ListNode :Equatable {
    public var val:Int
    public var next:ListNode?
    public init(_ val:Int) {
        self.val = val
        self.next =  nil
    }
    
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        let isValEqual = lhs.val == rhs.val
        let isNextEqual = lhs.next == rhs.next
        return isValEqual && isNextEqual
        
    }
    
    
}

func buildListFrom(arr:[Int]) -> ListNode {
    var h:ListNode? = nil
    var node:ListNode?
    for val in arr {
        if h == nil {
            h = ListNode(val)
            node = h!
        } else {
            let newNode = ListNode(val)
            node!.next = newNode
            node = newNode
        }
    }
    return h!
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
 
 //21,二叉树的层级遍历
    2
   5 8
 7 9 11
 
let t1 = BinaryTreeNode(val: 2)
let t2 = BinaryTreeNode(val: 5)
let t3 = BinaryTreeNode(val: 8)
let t4 = BinaryTreeNode(val: 7)
let t5 = BinaryTreeNode(val: 9)
let t6 = BinaryTreeNode(val: 11)
t1.left = t2
t1.right = t3
t2.left = t4
t2.right = t5
t3.right = t6

levelTravesal(root: t1)
 
permutation(str: ["a","b","c"])
 
//30
let a = [
    [1,2,3 ,4],
    [9,10,11,12],
    [8,19,21,98],
    [17,5,6,30]
]
printMatrix(a: a)
 

var nums = [3,1,12,6,-4,20,15,5];

 let output =  getLeastNums(input: nums, k: 4)
print(output)
 
//-31
var num =  [1,-2,3,10,-4,7,2,-5]
var max =  findGreatestSumOfSubArray(arr: num)
print(max)
 

//35-第一个只出现一次的字符
var ch =  firstNotRepatingChar(str: Array("aagfbbccddee"))
print(ch)
 
var str = Array("hello every body!")
reverseSentence(str: &str)
print(String(str))

 
 "1,2,3,5,6"
 */

//

let uglyNum = getUglyNumber(index: 5)
print(uglyNum)


