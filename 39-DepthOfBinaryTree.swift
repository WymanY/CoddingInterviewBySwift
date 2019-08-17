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
func treeDepth(root:TreeNode?) -> Int {
    guard let r = root else {
        return 0
    }
    let left = treeDepth(root: r.left)
    let right = treeDepth(root: r.right)
    return left > right ? left + 1 : right + 1
}
