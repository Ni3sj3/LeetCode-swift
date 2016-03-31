class Solution {
    func containsDuplicate(nums: [Int]) -> Bool {
        var n = nums.count
        
        if (n < 2){
            return false
        }
        
        var tally = [Int:Int]()
        
        for i in 0..<n {
            if (tally[nums[i]] == nil){
                tally[nums[i]] = 1
            }
            else{
                tally[nums[i]]!++
            }
        }
        
        for key in tally.keys {
            if (tally[key]!%2 == 0){
                return true
            }
        }
        
        return false
    }
}