class Solution {
    func searchInsert(nums: [Int], _ target: Int) -> Int {
        var n = nums.count
        if (n == 0 || target < nums[0]){
            return 0
        }
        
        var saveNum = 0
        
        for i in 0..<n {
            if (nums[i] < target){
                saveNum = nums[i]
            }
            if (nums[i] == target){
                return i
            }
            if (nums[i] > target){
                return i
            }
        }
        if (nums[n-1] < target){
            return n
        }
        return 0
    }
}