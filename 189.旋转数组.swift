/*
 * @lc app=leetcode.cn id=189 lang=swift
 *
 * [189] 旋转数组
 *
 * https://leetcode-cn.com/problems/rotate-array/description/
 *
 * algorithms
 * Easy (38.49%)
 * Likes:    353
 * Dislikes: 0
 * Total Accepted:    63.2K
 * Total Submissions: 163.9K
 * Testcase Example:  '[1,2,3,4,5,6,7]\n3'
 *
 * 给定一个数组，将数组中的元素向右移动 k 个位置，其中 k 是非负数。
 * 
 * 示例 1:
 * 
 * 输入: [1,2,3,4,5,6,7] 和 k = 3
 * 输出: [5,6,7,1,2,3,4]
 * 解释:
 * 向右旋转 1 步: [7,1,2,3,4,5,6]
 * 向右旋转 2 步: [6,7,1,2,3,4,5]
 * 向右旋转 3 步: [5,6,7,1,2,3,4]
 * 
 * 
 * 示例 2:
 * 
 * 输入: [-1,-100,3,99] 和 k = 2
 * 输出: [3,99,-1,-100]
 * 解释: 
 * 向右旋转 1 步: [99,-1,-100,3]
 * 向右旋转 2 步: [3,99,-1,-100]
 * 
 * 说明:
 * 
 * 
 * 尽可能想出更多的解决方案，至少有三种不同的方法可以解决这个问题。
 * 要求使用空间复杂度为 O(1) 的 原地 算法。
 * 
 * 
 */
class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        
        // 0(n) 时间 + O(n) 空间
        // bruteForce(&nums, k)

        // double pointer
        _rotate(&nums, k)
    }

    private func _rotate(_ nums: inout [Int], _ k: Int) { 
        var k = k % nums.count
        reverse(&nums, 0, nums.count-1)
        reverse(&nums, 0, k-1)
        reverse(&nums, k, nums.count-1)
    }

    private func reverse(_ nums: inout [Int], _ left: Int, _ right: Int) {
        var left = left
        var right = right

        while left < right {
            let tmp = nums[left]
            nums[left] = nums[right]
            nums[right] = tmp
            left += 1
            right -= 1
        }
    }

    private func bruteForce(_ nums: inout [Int], _ k: Int) {

        guard k > 0 else { return }

        let cutIndex = nums.count - k % nums.count
        var tmp = Array(nums[cutIndex..<nums.count])
        tmp.append(contentsOf: Array(nums[0..<cutIndex]))
        nums = tmp
    }
    
}

