class Solution {
    func maxProfit(prices: [Int]) -> Int {
        var n = prices.count
        
        if (n < 2) {
            return 0
        }
        
        var rev = 0
        var cost = 0
        var hold = prices[0]
        var ableBuy = true
            
        for i in 0..<n
        {
            if(prices[i] <= hold && !ableBuy)
            {
                  rev += hold
                  ableBuy = true
            }
            if(prices[i] >= hold && ableBuy)
            {
                cost += hold
                ableBuy = false
            }
            hold = prices[i]
        }
        if (!ableBuy){
            rev += prices[n-1]
        }
        return rev - cost
        
    }
}