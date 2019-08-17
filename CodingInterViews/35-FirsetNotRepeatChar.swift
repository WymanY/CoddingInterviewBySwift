//
//  35-FirsetNotRepeatChar.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/17.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation
/*
 35-第一个只出现一次的字符
 abcbcdy
 */

func firstNotRepatingChar(str:[Character]) -> Character? {
    guard !str.isEmpty else {
        return nil;
    }
    
    var hashTable  = [Character:Int]()
    for ch in str {
        if let cnt = hashTable[ch] {
            hashTable[ch] = cnt + 1
        } else {
            hashTable[ch] = 1
        }
    }

    var minIndex = Int.max
    for (key,value) in hashTable {
        if value == 1 {
            let curIndex =  str.firstIndex(of: key) ?? -1
            if minIndex > curIndex {
                minIndex = curIndex
            }
        }
    }
    if minIndex != -1 {
        return str[minIndex]
    }
    return nil
}
