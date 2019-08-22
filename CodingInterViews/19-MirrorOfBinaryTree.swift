//
//  19-MirrorOfBinaryTree.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/11.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

/*
 操作给定的二叉树，将其变换为源二叉树的镜像。
 
 二叉树的镜像定义：源二叉树  8       镜像：   8
                       /   \           /   \
                      6     10        10     6
                    /   \   /  \     /   \   /  \
                    5   7  9   11   11   9  7    5
 
 */

//第一种思路递归实现很简单，
func mirror(tree:BinaryTreeNode?) {
    guard tree != nil else{
        print("tree is empty")
        return
    }
    swap(&tree!.left, &tree!.right)
    mirror(tree: tree?.left)
    mirror(tree: tree?.right)
}

/*
 第二种思路待添加实现，使用先序中序后续遍历
 把前序中序，后序遍历中的打印节点的过程，编程交换左右子树的过程，其中需要注意一点，就是交换后左右子树进行了交换，再往下走的时候，往左走往右走的过程需改变，原来的向右走，现在应该是向左走，
 */
