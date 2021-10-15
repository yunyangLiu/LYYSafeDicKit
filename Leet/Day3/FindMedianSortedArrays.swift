//
//  FindMedianSortedArrays.swift
//  Leet
//
//  Created by 58 on 2021/10/14.
//

import Cocoa

class FindMedianSortedArrays: NSObject {

    static func findMedianSortedArrays(nums1:[Int], nums2:[Int]) -> Double {
        var left = 0
        
        var right = 0
        
        var nums = [Int]()
        
        while left < nums1.count && right < nums2.count && nums1.count > 0 && nums2.count > 0{
             let num1 = nums1[left]
             let num2 = nums2[right]
            
            if num1 > num2 {
                nums.append(num2)
                right = right + 1
            }
            else{
                nums.append(num1)
                left = left + 1
            }
        }
        
        while left < nums1.count {
            let num1 = nums1[left]
            nums.append(num1)
            left = left + 1
        }
        
        while right < nums2.count {
            let num2 = nums2[right]
            nums.append(num2)
            right = right + 1
        }
        
        print(nums)
        
        if nums.count % 2 == 0 {
            
            return Double((nums[nums.count/2] + nums[nums.count/2 - 1])/2)
        }else {
            
            return Double(nums[nums.count/2])
        }
    }
}
