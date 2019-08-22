//
//  21-LevelTravelsal.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/11.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

/*
 从上往下打印二叉树
 从上往下打印出二叉树的每个节点，同层节点从左至右打印。
 其实就是层级遍历
    2
   5 8
 7 9 11
 
 */



/*使用辅助队列的形式实现*/
func levelTravesal(root:BinaryTreeNode?) {
    guard let r = root else {
        print("tree should not be empty")
        return
    }
    var queue:[BinaryTreeNode] = [r]
    
    while !queue.isEmpty {
        let node = queue.removeFirst()
        print(node.val, terminator: ",")
        if let left = node.left {
            queue.append(left)
        }
        if let right = node.right {
            queue.append(right)
        }
    }
}
