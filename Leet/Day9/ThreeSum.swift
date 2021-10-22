//
//  ThreeSum.swift
//  Leet
//
//  Created by 58 on 2021/10/22.
//

import Cocoa

class ThreeSum: NSObject {
    
    
    static func threeSum(_ nums: [Int]) -> [[Int]] {
        var reslut = [[Int]]()
        
        if nums.count <= 2 {
            
            return reslut
        }
        
        let nums1 =  nums.sorted {
            return $0 > $1
        }
        
        print(nums1)
        
        var m = [Int]()
        
        for i in 0 ..< nums1.count - 2 {
            var n1 = nums1[i]
            
            if i > 0 {
                if n1 == nums1[i - 1] {
                   continue
                }
            }
            
            for j in i+1 ..< nums1.count - 1 {
                var n2 = nums1[j]
                if j > 0 {
                    if n2 == nums1[j - 1] {
                       continue
                    }
                }
                for k in j+1 ..< nums1.count {
                    var n3 = nums1[k]
                    if k > 0 {
                        if n3 == nums1[k - 1] {
                           continue
                        }
                    }
                    if n1 + n2 + n3 == 0 {
                        
                       
                        m = [n1,n2,n3]
                        
                        reslut.append(m)
                    }
                    
                }
            }
        }
        
    

        
        print(reslut)
        
        return reslut
        
    }
}
