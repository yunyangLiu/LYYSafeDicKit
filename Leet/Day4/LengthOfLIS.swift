//
//  LengthOfLIS.swift
//  Leet
//
//  Created by 58 on 2021/10/15.
//

import Cocoa

/*
 
 给你一个整数数组 nums ，找到其中最长严格递增子序列的长度。

 子序列是由数组派生而来的序列，删除（或不删除）数组中的元素而不改变其余元素的顺序。例如，[3,6,2,7] 是数组 [0,3,1,6,2,2,7] 的子序列。

  
 示例 1：

 输入：nums = [10,9,2,5,3,7,101,18]
 输出：4
 解释：最长递增子序列是 [2,3,7,101]，因此长度为 4 。

 */
class LengthOfLIS: NSObject {

    static func LengthOfLIS(nums:[Int]) -> Int {
        

        let count = nums.count
        if count <= 1 {
            return count
        }
        //声明一个数组dp，记录第i位之前，最大子序列的数目
        var dp = Array(repeating: 1, count: count)
        var res = 1;
        for i in 1..<count {
            for j in 0..<i {
                if nums[i] > nums[j] {
                    //如果 nums[i] > nums[j]，则将数组dp位于j位的数字+1，并通过比较，得到数组dp位于i位的值
                    dp[i] = max(dp[i],dp[j] + 1)
                }
            }
            
            //通过res保存最大的dp[i]值
            res = max(res,dp[i])
        }

     
        return res
    }
}
