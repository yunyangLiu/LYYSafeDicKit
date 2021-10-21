//
//  IntToRoman.swift
//  Leet
//
//  Created by 58 on 2021/10/21.
//

import Cocoa
/*
 罗马数字包含以下七种字符： I， V， X， L，C，D 和 M。

 字符          数值
 I             1
 V             5
 X             10
 L             50
 C             100
 D             500
 M             1000

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/integer-to-roman
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
class IntToRoman: NSObject {

   static func intToRoman(_ num: Int) -> String {
       
       let array = ["I","V","X","L","C","D","M"]

       var reslut = ""
       
       
       var m = num
       var i = 0
       
       while m > 0 {
           var str = ""
           let a = m % 10
           
           if a == 0 {
               m = m/10
               
               i += 1
               
               reslut = str + reslut;
               
               continue
           }
                      
           if a <= 3 {
              
               for _ in 0 ... a-1 {
                   
                   str.append(array[i*2])
               }
           }
           
           if a == 4 {
              
                   
              str.append(array[i * 2])
              str.append(array[i * 2 + 1])

           }
           
           if a == 5 {
              
              str.append(array[i * 2 + 1])

           }
           
           if a > 5 && a <= 8 {
               str.append(array[i * 2 + 1])
               for _ in 5 ... a-1 {
                   
                   str.append(array[i * 2])
               }

           }
           
           if a == 9 {
               str.append(array[i * 2])
               str.append(array[i * 2 + 2])

           }
           
           m = m/10
           
           i += 1
           
           reslut = str + reslut;
       }
       
      
       return reslut
   }
    
   static func romanToInt(_ s: String) -> Int {

        var num = 0
        var n = 0
       let dic = ["I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000]
       for (i, str) in s.enumerated() {

           let m : Int = dic[String(str)] ?? 0
           if i != 0 && m > n {
              num =  num - n + m - n
           }else{
               num = num + m

           }
           n = m
        }

        print(num)
        return num
    }
}
