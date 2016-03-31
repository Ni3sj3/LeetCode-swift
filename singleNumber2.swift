class Solution {
    func singleNumber(nums: [Int]) -> Int {
        let n = nums.count
        var trackInts = [Int: Int]()
        
        for i in 0..<n {
            if trackInts[nums[i]] == nil{
                trackInts[nums[i]] = 0
            }
            else {
                trackInts[nums[i]] = nil
            }
        }
        
        var returnInt:Int = 0
        
        for key in trackInts.keys {
            returnInt = key
        }
        
        return returnInt
    }
}