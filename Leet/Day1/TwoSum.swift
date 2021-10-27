//
//  LeetCode1.swift
//  Leet
//
//  Created by 58 on 2021/10/12.
//

import Cocoa
/*
 给定一个整数数组 nums 和一个整数目标值 target，请你在该数组中找出 和为目标值 target  的那 两个 整数，并返回它们的数组下标。

 你可以假设每种输入只会对应一个答案。但是，数组中同一个元素在答案里不能重复出现。

 你可以按任意顺序返回答案。


 示例 1：

 输入：nums = [2,7,11,15], target = 9
 输出：[0,1]
 解释：因为 nums[0] + nums[1] == 9 ，返回 [0, 1] 。

 */
class TwoSum: NSObject {
    static func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dic = Dictionary<String, Int>()
        for (i, num) in nums.enumerated() {
            let str = "\(num)"
            dic[str] = i
        }
        
        print(dic)

        for (i, num) in nums.enumerated() {
            
            let n = target - num
            
            let str = "\(n)"
            
            if let index = dic[str] {
                if index != i{
                    print([i,index])
                    return[i,index]

                }
            }

            
        }

       return [0]
    }
    
   //26. 删除有序数组中的重复项
   static func removeDuplicates1(_ nums: inout [Int]) -> Int {
    
    if nums.count == 0 {
        return 0
    }
    
    var j = 0
    for i in 0 ..< nums.count {
        
        if nums[j] != nums[i] {
            j += 1
           nums[j] = nums[i]
        }
    }
    
    return j+1
    
    
  }
    
   static func isValid(_ s: String) -> Bool {

       let dic = [")":"(","]":"[","}":"{"]
       
       if s.count % 2 != 0{
           return false

       }
      
       var array = [Character]()
       for c in s {
           switch c {
           case "(","[","{":
               array.append(c)
               
           case ")","]","}":
               if array.count == 0 {
                  return false
               }
               let str = dic[String(c)]
               if String(array.last!) == str {
                   array.removeLast()
                   
               }else{
                   
                   return false
               }
               
           default:
               break
           }
       }
       
       if array.count == 0 {
           return true
       }
       
       return false
    }
}
