//
//  replaceSpace.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/8.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation
/*
 替换空格
 */

func replaceSpace(str: String) -> String {
    var chs = Array(str)
    
    guard chs.count > 0  else{
        return ""
    }
    var blankCount = 0
    for ch in chs {
        if ch == " " {
            blankCount += 1
        }
    }
    
    let count = chs.count + blankCount * 2
    var i = chs.count - 1
    var j = count - 1
    
    //想给array 扩容。
    for _ in 0..<blankCount*2 {
        chs.append(" ")
    }
    
    while i >= 0 && j >= 0 {
        if chs[i] == " " {
            chs[j] =  "0"
            j -= 1
            chs[j] =  "2"
            j -= 1
            chs[j] = "%"
            j -= 1
            i -= 1
        } else {
            chs[j] = chs[i]
            j -= 1
            i -= 1
        }
    }
    return String(chs)
}

