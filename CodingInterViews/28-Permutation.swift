//
//  28-permutation.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/13.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation
/*
 28-字符串的全排列
 输入一个字符串,按字典序打印出该字符串中字符的所有排列
 
 例如输入字符串abc,
 
 则打印出由字符a,b,c所能排列出来的所有字符串abc,acb,bac,bca,cab和cba。
 
 结果请按字母顺序输出。
 
 注意 输入一个字符串,长度不超过9(可能有字符重复),字符只包括大小写字母
 */

func permutation(str:[Character]) {
    guard !str.isEmpty else {
        return
    }
    permutation(str: str, begin: 0)
}

private func permutation(str:[Character],begin:Int) {
    var charsets = str
    if begin == charsets.count - 1 {
        print(str)
    }
    var i = begin
    /*
     i = 0 ,begin = 0
     permutaion(abc 0)
   
     =>
     abc 1  i = 2, begin = 1, i = 2 , begin = 2, i = 2 ,begin = 3
     abc 2  begin  = 2,i = 2, i = 3,begin = 2   acb  begin 3  = > acb, abc,
     abc 3
     */
    
    /*
      i = 1,begin = 0
     */
    
    /*
      i = 2 ,begin = 0
     */
    
    /*
     i = 3,begin = 0
    */
    
    while i < charsets.count {
        var tmp = charsets[i]
        charsets[i] = charsets[begin]
        charsets[begin] = tmp
        permutation(str: charsets, begin: begin + 1)
        tmp = charsets[i]
        charsets[i] = charsets[begin]
        charsets[begin] = tmp
        i += 1
    }
    
}
