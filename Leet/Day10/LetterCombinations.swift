//
//  LetterCombinations.swift
//  Leet
//
//  Created by Rong on 2021/10/24.
//

import Cocoa

class LetterCombinations: NSObject {
    
    private var list = [String]()


    func letterCombinations(_ digits: String) -> [String] {

        
        var array = [[String]]()
        
        if digits == "" {
            return []
        }
        
        let dic = ["2":["a","b","c"],"3":["d","e","f"],"4":["g","h","i"],"5":["j","k","l"],"6":["m","n","o"],"7":["p","q","r","s"],"8":["t","u","v"],"9":["w","x","y","z"]]
        
//        let abcArray = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q",]
        
        for c in digits {
            
            let str = String(c)
            
            let arr = dic[str]
            
            array.append(arr!)
            
        }
    
        
        
        findCombination(array: array, index: 0, s: "")

        print(self.list)
        
        return self.list
    }
    
    
    func findCombination(array:[[String]],index:Int,s:String){
        
        if index == array.count {
            let res = s

            self.list.append(res)
            return
        }
        
        let arr = array[index]
        
        for str in arr {
            var res = s
            res.append(str)
            
            findCombination(array: array, index: index + 1, s: res)
        }

    }
}
