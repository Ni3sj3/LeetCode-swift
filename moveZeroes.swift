class Solution {
    func moveZeroes(inout nums: [Int]) {
        var n = nums.count
        while (n > 0 ){
            if (nums[n-1] == 0){
                nums.removeAtIndex(n-1)
                nums.append(0)
            }
            n--
        }
    }
}