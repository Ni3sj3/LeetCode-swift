class Solution {
    func trailingZeroes(n: Int) -> Int {
        var returnInt = 0
        var x = n
        var i = 1
        while (x > 1){
            x = Int(floor(Double(n)/pow(5.0,Double(i))))
            returnInt += x
            i++
        }
        
        return returnInt
    }
}