/*
 * @lc app=leetcode.cn id=48 lang=swift
 *
 * [48] 旋转图像
 *
 * https://leetcode-cn.com/problems/rotate-image/description/
 *
 * algorithms
 * Medium (63.69%)
 * Likes:    270
 * Dislikes: 0
 * Total Accepted:    32.2K
 * Total Submissions: 50.5K
 * Testcase Example:  '[[1,2,3],[4,5,6],[7,8,9]]'
 *
 * 给定一个 n × n 的二维矩阵表示一个图像。
 * 
 * 将图像顺时针旋转 90 度。
 * 
 * 说明：
 * 
 * 你必须在原地旋转图像，这意味着你需要直接修改输入的二维矩阵。请不要使用另一个矩阵来旋转图像。
 * 
 * 示例 1:
 * 
 * 给定 matrix = 
 * [
 * ⁠ [1,2,3],
 * ⁠ [4,5,6],
 * ⁠ [7,8,9]
 * ],
 * 
 * 原地旋转输入矩阵，使其变为:
 * [
 * ⁠ [7,4,1],
 * ⁠ [8,5,2],
 * ⁠ [9,6,3]
 * ]
 * 
 * 
 * 示例 2:
 * 
 * 给定 matrix =
 * [
 * ⁠ [ 5, 1, 9,11],
 * ⁠ [ 2, 4, 8,10],
 * ⁠ [13, 3, 6, 7],
 * ⁠ [15,14,12,16]
 * ], 
 * 
 * 原地旋转输入矩阵，使其变为:
 * [
 * ⁠ [15,13, 2, 5],
 * ⁠ [14, 3, 4, 1],
 * ⁠ [12, 6, 8, 9],
 * ⁠ [16, 7,10,11]
 * ]
 * 
 * 
 */
class Solution {
    func rotate(_ matrix: inout [[Int]]) {

        let n = matrix.count
        
        // reverse
        for i in 0..<n/2 {
            for j in 0..<n {
                let tmp = matrix[i][j]
                matrix[i][j] = matrix[n-1-i][j]
                matrix[n-i-1][j] = tmp
            }
        }

        // 轴对称
        for i in 0..<n {
            for j in 0..<i {
                let tmp = matrix[i][j]
                matrix[i][j] = matrix[j][i]
                matrix[j][i] = tmp
            }
        }
    }
}

