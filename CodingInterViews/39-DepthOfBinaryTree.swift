//
//  39-DepthOfBinaryTree.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/17.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

/*
 39-二叉树的深度
 */
func treeDepth(root:BinaryTreeNode?) -> Int {
    guard let r = root else {
        return 0
    }
    let left = treeDepth(root: r.left)
    let right = treeDepth(root: r.right)
    return left > right ? left + 1 : right + 1
}

//扩展问题，判断一棵树是不是平衡二叉树
func isBalanced(root:BinaryTreeNode?) -> Bool {
    guard let r = root else {
        return false
    }
    let left = treeDepth(root: r.left)
    let right = treeDepth(root: r.right)
    let diff = left - right
    if diff < -1 || diff > 1 {
        return false
    }
    return isBalanced(root: root?.left) && isBalanced(root: root?.right)
}
