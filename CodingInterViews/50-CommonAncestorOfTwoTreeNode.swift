//
//  50-CommonAncestorOfTwoBinaryTreeNode.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/18.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation
/*
 50-树种两个节点的最低公共祖先
 */

func getLastCommonParent(root:TreeNode?,node1:TreeNode?,node2:TreeNode?) -> TreeNode? {
    guard let r = root,let n1 = node1,let n2 = node2 else {
        return nil
    }
    var path1:[TreeNode] =  [TreeNode]()
    _ = getNodePath(root: r, node: n1, path: &path1)
    var path2:[TreeNode] =  [TreeNode]()
    _ = getNodePath(root: r, node: n2, path: &path2)
    
    return getLastCommonNode(path1: path1, path2: path2)
}

private func getNodePath(root:TreeNode,node:TreeNode,path:inout [TreeNode]) -> Bool{
    if root == node {
        return true
    }
    //使用栈的数据结构
    var found = false
    path.append(root)
    var i = 0
    while !found && i < root.childRen.count  {
        found = getNodePath(root: root, node: node, path: &path)
        i += 1
    }
    if !found {
        path.removeLast()
    }
    return found
    
}

private func getLastCommonNode(path1:[TreeNode],path2:[TreeNode])-> TreeNode? {
    var i = 0
    var j = 0
    var pLast:TreeNode? = nil
    
    while i < path1.count && j < path2.count {
        if path1[i] == path2[j] {
            pLast = path1[i]
        }
        i += 1
        j += 1
    }
    return pLast
}
