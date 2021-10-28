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
    
   /*
     给你一个有序数组 nums ，请你 原地 删除重复出现的元素，使每个元素 只出现一次 ，返回删除后数组的新长度。

     不要使用额外的数组空间，你必须在 原地 修改输入数组 并在使用 O(1) 额外空间的条件下完成

     来源：力扣（LeetCode）
     链接：https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array
     著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
     */
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
    
    /*
     给你一个数组 nums 和一个值 val，你需要 原地 移除所有数值等于 val 的元素，并返回移除后数组的新长度。

     不要使用额外的数组空间，你必须仅使用 O(1) 额外空间并 原地 修改输入数组。

     元素的顺序可以改变。你不需要考虑数组中超出新长度后面的元素。

     来源：力扣（LeetCode）
     链接：https://leetcode-cn.com/problems/remove-element
     著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
     */
    static func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
     
     if nums.count == 0 {
         return 0
     }
     
     var j = 0
     for i in 0 ..< nums.count {
         
         if nums[i] != val {
            nums[j] = nums[i]
            j += 1
         }
     }
     
     return j
     
     
   }
    
    //验证括号成对出现
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
