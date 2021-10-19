//
//  ReverseInt.swift
//  Leet
//
//  Created by 58 on 2021/10/19.
//

import Cocoa
/*
 给你一个 32 位的有符号整数 x ，返回将 x 中的数字部分反转后的结果。

 如果反转后整数超过 32 位的有符号整数的范围 [−231,  231 − 1] ，就返回 0。

 假设环境不允许存储 64 位整数（有符号或无符号）。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/reverse-integer
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
class ReverseInt: NSObject {
    
    static func reverse(_ x: Int) -> Int {
        
        var num = x;
        var a = 0;
        var isMax = true
        if num < 0 {
          isMax = false
          num = 0 - num
        }
        while num > 0 {
            a = a * 10 + num % 10
            num = num / 10;
        }
        if a > 2147483647 {
            return 0
        }
        
        if isMax == false {
            a = 0 - a;
        }
        
        return a;

    }

}
