//
//  42-ReverseSentence.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/17.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation

private func reverse(str:inout [Character],begin:Int,end:Int) {
    guard !str.isEmpty else {
        return
    }
    var i = begin
    var j  = end - 1

    while i < j {
        str.swapAt(i, j)
        i += 1
        j -= 1
    }
}

func reverseSentence(str:inout [Character]) {
    guard str.count > 1 else {
        print("字符数列太少不需要排序")
        return
    }
    reverse(str: &str, begin: 0, end: str.count - 1)
    var begin = 0
    var end = 0
    let count = str.count
    let spaceChar = Character(" ")
    while begin < str.count {
        if str[begin] == spaceChar {
            begin += 1
            end += 1
        } else if str[end] == spaceChar || end == count - 1 {
            reverse(str: &str, begin: begin, end: end)
            end += 1
            begin = end
        } else {
            end += 1
        }
    }
}

//扩展题目，字符串的左旋转操作

