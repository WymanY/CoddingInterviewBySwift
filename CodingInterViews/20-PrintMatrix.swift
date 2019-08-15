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
 
 1,2,3,4, 8,12,16,15,14,13,9,5, 6,7,11,10
 */

func printMatrix(a:[[Int]]) {
    guard a.count > 0 && a.first?.count ?? 0 > 0 else {
        print("The matrix should not be empty")
        return
    }
    
    var start = 0
    let rows = a.count
    let columns = a.first!.count
    
    while columns > start * 2 && rows > start * 2 {
        printMatrixInCicrcle(num: a, columns: columns, rows: rows, start: start)
        start += 1
    }
    
}

private func printMatrixInCicrcle(num:[[Int]],columns:Int,rows:Int,start:Int) {
    let endX = columns - 1 - start
    let endY = rows - 1 - start
    
    //从左到右打印一行
    var i = start
    while i <= endX {
        print(num[start][i])
        i += 1
    }
    //从上到下
    if start < endY {
        i = start  + 1
        while i <= endY {
            print(num[i][endX])
            i += 1
        }
    }
    
    //从右到左
    if start < endX &&  start < endY {
        i = endX - 1
        while i >= start {
            print(num[endY][i])
            i -= 1
        }
    }
    
    if start < endX && start < endY - 1{
        i = endY - 1
        while i > start {
            print(num[i][start])
            i -= 1
        }
    }
}
