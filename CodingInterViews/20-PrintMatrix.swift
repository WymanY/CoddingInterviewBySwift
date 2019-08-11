//
//  20-PrintMatrix.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/11.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation
/*
 顺时针打印矩阵
 输入一个矩阵，按照从外向里以顺时针的顺序依次打印出每一个数字，
 
 例如， 如果输入如下矩阵：
 
  1   2   3   4
  5   6   7   8
  9  10  11  12
 13  14  15  16
 
 则依次打印出数字
 
 1,2,3,4,8,12,16,15,14,13,9,5,6,7,11,10
 */

func printMatrix(a:[[Int]]) {
    guard a.count > 0 && a.first?.count ?? 0 > 0 else {
        print("The matrix should not be empty")
        return
    }
    
    
}
