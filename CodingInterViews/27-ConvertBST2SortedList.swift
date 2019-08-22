//
//  27-ConvertBST2SortedList.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/13.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

/*
 27-二叉搜索树和双向链表
 
 输入一棵二叉搜索树，将该二叉搜索树转换成一个排序的双向链表。要求不能创建任何新的结点，只能调整树中结点指针的指向。
 
 */

func convert(root:BinaryTreeNode?) -> BinaryTreeNode? {
    guard let r = root else {
        return nil
    }
    var lastNodeInList:BinaryTreeNode? = nil
    convertNode(node: r, lastNodeInList: &lastNodeInList)
    return lastNodeInList
}

private func convertNode(node:BinaryTreeNode?,lastNodeInList:inout BinaryTreeNode?){
    if node == nil {
        return
    }
    if node!.left != nil {
        convertNode(node: node!.left, lastNodeInList: &lastNodeInList)
    }
    
    node!.left = lastNodeInList
    
    if lastNodeInList != nil {
        lastNodeInList!.right = node
    }
    lastNodeInList = node
    
    if node!.right != nil {
        convertNode(node: node!.right, lastNodeInList: &lastNodeInList)
    }

}
