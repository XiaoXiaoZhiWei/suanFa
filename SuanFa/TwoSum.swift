//
//  test.swift
//  
//
//  Created by 陈宁 on 2020/7/29.
//

import Foundation

/**
 给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。
 你可以假设每种输入只会对应一个答案。但是，数组中同一个元素不能使用两遍。
 
 给定 nums = [2, 7, 11, 15], target = 9

 因为 nums[0] + nums[1] = 2 + 7 = 9
 所以返回 [0, 1]
 */

class Solution {
    func twoSum(_ nums:  [Int], _ target: Int) -> [Int] {
        
        var twoArray: [Int] = []
        var allNums = nums
        var allOrignalNums = nums
        
        while twoArray.count == 0 {
            if let fisrtValue = allNums.first {
                allNums.remove(at: 0)
                for num in allNums {
                    if (fisrtValue + num) == target {
                        twoArray.append(fisrtValue)
                        twoArray.append(num)
                        break
                    }
                }
            }
        }
        
        
        let firstIndex = nums.firstIndex(of: twoArray.first!)!
        var secondIndex = nums.firstIndex(of: twoArray.last!)!
        if secondIndex == firstIndex {
            allOrignalNums.remove(at: firstIndex)
            secondIndex = allOrignalNums.firstIndex(of: twoArray.last!)! + 1
        }
        return [firstIndex,secondIndex]
    }
    
}

var soluction = Solution()
var result = soluction.twoSum([11, 15, 2, 7], 9)
var result2 = soluction.twoSum([3, 3,], 6)
var result3 = soluction.twoSum([2,5,5,11], 10)
print(result)
print(result2)
print(result3)
