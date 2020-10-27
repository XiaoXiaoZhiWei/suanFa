/*
 * @lc app=leetcode.cn id=3 lang=swift
 *
 * [3] 无重复字符的最长子串
 */

// @lc code=start
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var result = [Character]()
        var count = 0
        var str = s
        for _ in str {
            for item in str {
                if !result.contains(item) {
                    result.append(item);
                } else {
                    if result.count > count
                    {
                        count = result.count
                    }
                    print("result=\(result)")
                    result = []
                    str.remove(at: str.startIndex)
                    break
                }   
            }
        }
        if result.count > count
        {
            count = result.count
        }
        print("result=\(result)")
        return count
    }
}
// @lc code=end

