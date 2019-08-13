//
//  24-PostOrderOfBinarySearchTree.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/11.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation
/*
 024-二叉搜索树的后序遍历序列/
 输入一个整数数组，判断该数组是不是某二叉搜索树的后序遍历的结果。如果是则输出Yes,否则输出No。假设输入的数组的任意两个数字都互不相同。
 */

func verifySquenceOfBST(squence:[Int]) -> Bool {
    guard  !squence.isEmpty else {
        print("sequnce is empty")
        return false
    }
    let root = squence.last!
    var i = 0
    
    //二叉搜索树左子树的节点小于根节点
    while squence[i] < root {
        i += 1
    }
    var j = i
    while j < squence.count - 1 {
        if squence[j] < root {
            return false
        }
        j += 1
    }
    
    var left = true
    
    if i > 0 {
        let leftA = squence[0..<i]
        left = verifySquenceOfBST(squence: Array(leftA))
    }

    var right = true
    if i < squence.count - 1 {
        let rightA = squence[i..<squence.count - 2]
        right = verifySquenceOfBST(squence: Array(rightA))
    }
    
    return left && right
}
