//
//  LengthOfLongestSubstring.swift
//  Leet
//
//  Created by 58 on 2021/10/14.
//

import Cocoa
/*
 给定一个字符串 s ，请你找出其中不含有重复字符的 最长子串 的长度。

 输入: s = "abcabcbb"
 输出: 3
 解释: 因为无重复字符的最长子串是 "abc"，所以其长度为 3。

 */
class LengthOfLongestSubstring: NSObject {

    
    static func lengthOfLongestSubstring(str:String) -> (String,Int) {
        
        if str == "" {
            return ("",0)
        }
        
        if str.count == 1 {
            
            return (str, 1)
        }
        
        var curStr = String()
        var maxStr = String()
        
        for char in str {
            
            while curStr.contains(char) {
                
                curStr.remove(at: curStr.startIndex)
            }
            
            curStr.append(char)

            if maxStr.count < curStr.count {
                
                maxStr = curStr
            }
            
            
        }
        
        return (maxStr, maxStr.count)
        
    }
}
