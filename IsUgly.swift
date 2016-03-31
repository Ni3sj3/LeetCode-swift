class Solution {
    func isUgly(num: Int) -> Bool {
        if(num == 0){
            return false}
        var n = num
        while (n % 2 == 0){
            n /= 2
        }
        while (n % 3 == 0){
            n /= 3
        }
        while (n % 5 == 0){
            n /= 5
        }
        return n == 1
    }
}