//
//  18-SubstructureOfTree.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/11.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

/*
 输入两颗二叉树A，B，判断B是不是A的子结构。
 */

func hasSubstree(root1:TreeNode?,root2:TreeNode?) -> Bool {
    var ret = false
    if var r1 = root1, var r2 = root2 {
        if r1.val == r2.val {
            ret = doesTree1HasTree2(r1: r1, r2: r2)
        }
        if ret == false {
            ret = doesTree1HasTree2(r1: r1.left, r2: r2)
        }
        if ret == false {
            ret = doesTree1HasTree2(r1: r1.right, r2: r2)
        }
    }
    return ret
}

func doesTree1HasTree2(r1:TreeNode?,r2:TreeNode?) -> Bool {
    if r1 == nil {
        return false
    }
    
    if r2 == nil {
        return true
    }
    
    if r1!.val != r2!.val {
        return false
    }
    
    return doesTree1HasTree2(r1: r1?.left, r2: r2?.left) && doesTree1HasTree2(r1: r1?.right, r2: r2?.right)
    
}
