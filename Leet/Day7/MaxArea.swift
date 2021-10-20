//
//  MaxArea.swift
//  Leet
//
//  Created by 58 on 2021/10/20.
//

import Cocoa

class MaxArea: NSObject {
     static func maxArea(_ height: [Int]) -> Int {
        
         
         var area = 0
         
         
         if height.count <= 1 || height.count >= 100000{
             
             return 0
         }
         
         if height.count == 2 {
            
             let a = height[0]
             let b = height[1]
             
             area = min(a, b)
             
             return min(a, b)
         }
         
         area = MaxArea().getArea2(height)
         
         
         return area
     }
    
    //暴力运算
    func getArea1(_ height: [Int]) -> Int {
        
        var area = 0

        for i in 0 ... height.count - 2 {
            
            var a = height[i]
            for j in i+1 ... height.count - 1 {
                
                var b = height[j]
                a = a > 10000 ? 10000 : a
                b = b > 10000 ? 10000 : b
                b = min(a, b)
                let m = (j - i) * b
                area = max(area, m)
            }
        }
     
        
        return area
    }
    
    //双指针
    func getArea2(_ height: [Int]) -> Int {
        
        var area = 0

        var i = 0
        var j = height.count - 1

        while i < j {
            if height[i] < height[j] {
                area = max(area, height[i] * (j - i))
               i += 1
                
            }else{
                
                area = max(area, height[j] * (j - i))
                j -= 1

            }
            
            
        }
     
        
        return area
    }
}
