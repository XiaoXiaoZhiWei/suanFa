/*
 * @lc app=leetcode.cn id=1 lang=swift
 *
 * [1] 两数之和
 */

// @lc code=start
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // var subNums = nums
        // var firstIndex = 0
        // var secondIndex = 0
        // for (i, num) in subNums.enumerated() {
        //     print("\(i)--\(num)")
        //     let otherNum = target - num
        //     if let numIndex = subNums.firstIndex(of: num) {
        //         subNums.remove(at:numIndex)
        //     }
        //     if subNums.contains(otherNum) {
        //         if let twoIndex = nums.lastIndex(of: otherNum)
        //         {
        //             firstIndex = i
        //             secondIndex = twoIndex
        //         }
        //         break
        //     }
        // }
        
        // for num in nums {
        //     let otherNum = target - num
        //     if let i = subNums.firstIndex(of: num) {
        //         subNums.remove(at:i)
        //     }
        //     if subNums.contains(otherNum) {
        //         if let oneIndex = nums.firstIndex(of: num),
        //         let twoIndex = nums.lastIndex(of: otherNum)
        //          {
        //             firstIndex = oneIndex
        //             secondIndex = twoIndex
        //         }
        //         break
        //     }
        // }
        
        // return [firstIndex,secondIndex]
        for i in 0..<nums.count {
            for j in 0..<nums.count {
                if nums[i] == target - nums[j] && i != j {
                    print("i=\(i)--j=\(j)")
                    
                    return [i,j]
                }
            }
        }
        return []
    }
}

let solution = Solution()
let nums = [3,2,4]
let target = 6
let result = solution.twoSum(nums,target)
print("\(result)")

// @lc code=end

