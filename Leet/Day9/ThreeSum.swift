//
//  ThreeSum.swift
//  Leet
//
//  Created by 58 on 2021/10/22.
//

import Cocoa

/*
 
 给你一个包含 n 个整数的数组 nums，判断 nums 中是否存在三个元素 a，b，c ，使得 a + b + c = 0 ？请你找出所有和为 0 且不重复的三元组。

 注意：答案中不可以包含重复的三元组。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/3sum
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

class ThreeSum: NSObject {
    
    
    static func threeSum(_ nums: [Int]) -> [[Int]] {
        
        guard nums.count > 2 else {
            return []
        }
        
        var results = [[Int]]()
        let sortedNums = nums.sorted()
        
        for i in 0..<sortedNums.count-1 {
            if i > 0 && sortedNums[i] == sortedNums[i-1] {
                continue
            }
            let target = 0 - sortedNums[i]
            var low = i + 1
            var high = nums.count - 1
            
            while low < high {
                let sum = sortedNums[low] + sortedNums[high]
                if sum == target {
                    let result = [sortedNums[i], sortedNums[low], sortedNums[high]]
                    results.append(result)
                    
                    while (low < high && sortedNums[low] == sortedNums[low+1]) {
                        low += 1
                    }
                    while (low < high && sortedNums[high] == sortedNums[high-1]) {
                        high -= 1
                    }
                    low += 1
                    high -= 1
                } else if sum < target {
                    low += 1
                } else {
                    high -= 1
                }
            }
        }
        
        return results
    }
}
