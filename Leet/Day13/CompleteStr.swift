//
//  CompleteStr.swift
//  Leet
//
//  Created by 58 on 2021/10/28.
//

import Cocoa

class CompleteStr: NSObject {

    
  static  func strStr(_ haystack: String, _ needle: String) -> Int {

    
    
    if needle.count == 0 {
        return 0
    } else if haystack.count == 0 {
        return -1
    } else if needle.count > haystack.count {
        return -1
    }else if needle.count == haystack.count {
        if needle == haystack {
            return 0
        }
        return -1
    }
    
    

    for i in 0 ... haystack.count - needle.count {
        let startIndex = haystack.index(haystack.startIndex, offsetBy: i)
        let endIndex = haystack.index(startIndex, offsetBy: needle.count)

        let str = haystack[startIndex ..< endIndex]
        
        if str == needle {
            return i
        }

            
    }
    return -1
  }
    
}
