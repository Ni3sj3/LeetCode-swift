class Solution {
    func singleNumber(nums: [Int]) -> [Int] {
        var lookup = [Int: Int]()
        for i in 0..<nums.count {
            if (lookup[nums[i]] == nil){
                lookup[nums[i]] = 0
            }
            else{
                lookup[nums[i]] = nil
            }
        }
        var ret = [Int]()
        
        for key in lookup.keys{
            ret.append(key)
        }
        
        return ret
    }
}