//
//  50-CommonAncestorOfTwoTreeNode.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/18.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation
/*
 50-树种两个节点的最低公共祖先
 */

func getLastCommonParent(root:TreeNode?,node1:TreeNode?,node2:TreeNode) -> TreeNode? {

    return nil
}

func getNodePath(root:TreeNode,node:TreeNode,path:inout [TreeNode]) -> Bool{
    if root == node {
        return true
    }
    //使用栈的数据结构
    var found = false
    path.append(root)
    var i = 0
//    while !found &&  {
//        found = getNodePath(root: root, node: node, path: &path)
//    }
    

    return found
    
}

func getLastCommonNode(path1:[TreeNode],path2:[TreeNode])-> TreeNode {
    return TreeNode(val: 0)
}
