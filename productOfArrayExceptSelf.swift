class Solution {
    func productExceptSelf(nums: [Int]) -> [Int] {
        var leftP = 1
        var rightP = 1
        var n = nums.count
        var ret = [Int](count: n, repeatedValue: 1)
        for i in 0..<n {
            ret[i] *= leftP
            leftP *= nums[i]
        }
        for j in 0..<n {
            ret[n-j-1] *= rightP
            rightP *= nums[n-j-1]
        }
        return ret
    }
}