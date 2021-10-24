//
//  ThreeSumClosest.swift
//  Leet
//
//  Created by Rong on 2021/10/24.
//

import Cocoa

/*
 
 给定一个包括 n 个整数的数组 nums 和 一个目标值 target。找出 nums 中的三个整数，使得它们的和与 target 最接近。返回这三个数的和。假定每组输入只存在唯一答案。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/3sum-closest
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

class ThreeSumClosest: NSObject {

   static func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {

        let sortedNums = nums.sorted()
    
        print(sortedNums)
        
        var n = 99999
        
        var reslut = 0

        for i in 0 ..< sortedNums.count - 2 {
            
            var left = i + 1
            var right = sortedNums.count - 1
            
            while left < right {
                
                let a = sortedNums[i]
                let b = sortedNums[left]
                let c = sortedNums[right]
                
                if a + b + c == target {
                    return target
                }
                
                if  n > abs(sortedNums[i] + sortedNums[left] + sortedNums[right] - target) {
                    
                    reslut = sortedNums[i] + sortedNums[left] + sortedNums[right]
                    n = abs(sortedNums[i] + sortedNums[left] + sortedNums[right] - target)
                }
            
                if a + b + c > target {
                    right -= 1
                }
                
                if a + b + c < target {
                    
                   left += 1
                }
                

            }
            
            
            
            
            
        }
        print(reslut)
        return reslut
    }
}
