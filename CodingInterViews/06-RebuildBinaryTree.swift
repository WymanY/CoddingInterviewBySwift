//
//  RebuildBinaryTree.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/10.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

/*前序遍历*/
func preOrder(root:TreeNode?) {
    guard let r = root else {
        return
    }
    print(r.val)
    preOrder(root: r.left)
    preOrder(root: r.right)
}
/*中序遍历*/
func inOrder(r:TreeNode?) {
    guard let root = r else {
        return
    }
    inOrder(r: root.left)
    print(root.val)
    inOrder(r: root.right)
}

func rebuildBinaryTree(preOrder:[Int],inOrder:[Int]) -> TreeNode? {
    guard preOrder.count == inOrder.count else {
        print("pre count is not equal in order")
        return nil
    }
    
    guard preOrder.count != 0 else {
        print("preOrder should not be empty")
        return nil
    }
    
    //得到前序遍历的节点数目
    let len = preOrder.count
    let value = preOrder.first!
    let root = TreeNode(val: value)
    var rootIndex = 0
    for val in inOrder {
        if val == value {
            break
        }
        rootIndex += 1
    }
    
    var preLeft:[Int] = [Int](repeating: 0, count: rootIndex)
    var inLeft:[Int] = [Int](repeating: 0, count: rootIndex)
    var preRight:[Int] = [Int](repeating: 0, count: len - rootIndex - 1)
    var inRight:[Int] = [Int](repeating: 0, count: len - rootIndex - 1)
    //构建数组
    var i = 0
    while i < len {
        if i < rootIndex {
            preLeft[i] = preOrder[i+1]
            inLeft[i] = inOrder[i]
        } else if i > rootIndex {
            preRight[i - rootIndex - 1] = preOrder[i]
            inRight[i - rootIndex - 1] = inOrder[i]
        }
        i += 1
    }
    root.left = rebuildBinaryTree(preOrder: preLeft, inOrder: inLeft)
    root.right = rebuildBinaryTree(preOrder: preRight, inOrder: inRight)
    return root
}
