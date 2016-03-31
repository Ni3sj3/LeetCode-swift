class Solution {
    func findMin(nums: [Int]) -> Int {
        var saveVar = 0
        var n = nums.count
        
        for i in 0..<n {
            if (nums[i] < saveVar){
                return nums[i]
            }
            saveVar = nums[i]
        }
        return nums[0]
    }
}