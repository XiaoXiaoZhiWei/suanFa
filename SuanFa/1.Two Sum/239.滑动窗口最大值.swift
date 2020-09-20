/*
 * @lc app=leetcode.cn id=239 lang=swift
 *
 * [239] 滑动窗口最大值
 */

// @lc code=start
class Solution {
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        var result = [Int]()
        var origalNums = nums
        /**
        for _ in 0...origalNums.count-k {
            let chuangKouNums = origalNums[0..<k]
            print("chuangKouNums=\(chuangKouNums)")
            if let maxNum = chuangKouNums.max() {
                print("maxNum=\(maxNum)")
                result.append(maxNum)
            }
            origalNums.removeFirst()
            print("origalNums=\(origalNums)")
        }
        */
        for i in 0 ..< nums.count-k+1 {
            let chuangKouNums = nums[i ..< k+i]
            print("chuangKouNums=\(chuangKouNums)")
            print("nums=\(nums)")
            if let maxNum = chuangKouNums.max() {
                print("maxNum=\(maxNum)")
                result.append(maxNum)
            }
        }
        return result
    }
}
// @lc code=end

