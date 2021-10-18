//
//  ConvertZ.swift
//  Leet
//
//  Created by 58 on 2021/10/18.
//

import Cocoa
/*
 将一个给定字符串 s 根据给定的行数 numRows ，以从上往下、从左到右进行 Z 字形排列。

 比如输入字符串为 "PAYPALISHIRING" 行数为 3 时，排列如下：

 P   A   H   N
 A P L S I I G
 Y   I   R

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/zigzag-conversion
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
class ConvertZ: NSObject {
    
    
    static func convertZ(s:String,numRows:Int) -> String {
        
        if s.count <= 1 || numRows <= 1 {
            return s
        }
        
        // 创建2位数组
        var rows = [[String]]()
        for _ in 0..<numRows {
            let row = [String]()
            rows.append(row)
        }
        
        // 二维数组赋值
        for (i, char) in s.enumerated() {
            let k = i % (2 * numRows - 2)
            if k <= numRows - 1 {
                var row = rows[k]
                row.append(String(char))
                rows[k] = row
            } else {
                var row = rows[2 * numRows - 2 - k]
                row.append(String(char))
                rows[2 * numRows - 2 - k] = row
            }
        }
        
        // 拼接2维数组
        var tempStr = ""
        for index in 0..<numRows {
            let row = rows[index]
            tempStr += row.joined(separator: "")
        }
        
        return tempStr
        
    }
}
