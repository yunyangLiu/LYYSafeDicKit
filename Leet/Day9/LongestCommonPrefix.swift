//
//  LongestCommonPrefix.swift
//  Leet
//
//  Created by 58 on 2021/10/22.
//

import Cocoa

/*
 
 编写一个函数来查找字符串数组中的最长公共前缀。

 如果不存在公共前缀，返回空字符串 ""。

  

 示例 1：

 输入：strs = ["flower","flow","flight"]
 输出："fl"
 示例 2：

 输入：strs = ["dog","racecar","car"]
 输出：""
 解释：输入不存在公共前缀。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/longest-common-prefix
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 
 
 */
class LongestCommonPrefix: NSObject {
    
   static func longestCommonPrefix(_ strs: [String]) -> String {

        var reslut : String = ""
        var i = 0

        while i < 200 {
            var c : String = ""

            for (j,str) in strs.enumerated() {
                
                if i < str.count {
                    let index = str.index(str.startIndex, offsetBy: i)
                    if c !=  String(str[index]) && j != 0 {
                        return reslut;
                    }
                    c = String(str[index])
                }else{
                    return reslut
                }
            }
            i += 1
            reslut.append(c)
        }
        
        return reslut
   }

}
