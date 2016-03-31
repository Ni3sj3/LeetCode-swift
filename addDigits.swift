class Solution {
    func addDigits(num: Int) -> Int {
        var returnNum:Int = num % 9
        if (returnNum > 0 || num == 0){
            return returnNum}
        else {
            return 9}
    }
}