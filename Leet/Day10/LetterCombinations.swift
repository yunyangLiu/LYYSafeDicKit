//
//  LetterCombinations.swift
//  Leet
//
//  Created by Rong on 2021/10/24.
//

import Cocoa
/*
 
 给定一个仅包含数字 2-9 的字符串，返回所有它能表示的字母组合。答案可以按 任意顺序 返回。

 给出数字到字母的映射如下（与电话按键相同）。注意 1 不对应任何字母。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/letter-combinations-of-a-phone-number
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
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
