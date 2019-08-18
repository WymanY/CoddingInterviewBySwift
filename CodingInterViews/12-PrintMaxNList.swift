//
//  PrintMaxNList.swift
//  CodingInterViews
//
//  Created by wymany on 2019/8/10.
//  Copyright © 2019 wymany. All rights reserved.
//

import Foundation
//12。给定一个数字N，打印从1到最大的N位数。

public extension UInt8 {
    var char:Character? {
        get {
            guard self < 10 else {
                return nil
            }
            let start = ("0" as UnicodeScalar).value
            
            return Character(UnicodeScalar(UInt8(start) + self))
        }
    }
}

class Soultion  {
    var n:Int
    var isOverFlow = false
    var nums:[Character]
    var len = 1
    init(_ n:Int) {
        self.n = n
        self.nums = [Character](repeating:"\0", count: n)
        self.nums[n-1] = "1"
    }
    
    func printN() {
        if self.n <= 0 {
            print("n should be great than 0")
            return
        }
        while isOverFlow == false {
            printNum()
            print(",")
            increment()
        }
    }
    private func printNum() {
        var i = n - len
        while i < n {
            print(nums[i],terminator:"")
            i += 1
        }
    }
    
    //目前这个自增算法是错误的。可以使用全排列的方式进行处理
    private func increment() {
        var nSum:UInt8 = 0 //当前位
        var takeOver:UInt8 = 0 //进位
        var i = n - 1

        while i >= 0 {
            let zeroAscii = Character("0").asciiValue!
            let numAscii  =  nums[i].asciiValue ?? 0
            nSum  = numAscii  - zeroAscii + takeOver

            if(i == len - 1)
            {
                nSum += 1
            }

            if nSum >= 10 {
                if i == 0 {
                    isOverFlow = true
                    print("is OverFlow")
                    return
                }  else {
                    nSum -= 10
                    nums[i] = nSum.char!
                    takeOver = 1
                    if i == (n - len){//如果是最高位那只需要进位
                        len += 1
                    }
                }
            } else {
                if takeOver == 1 {
                    print("it is only a take over")
                }
                nums[i] = nSum.char!
                break
            }
            i -= 1
        }
    }
}
