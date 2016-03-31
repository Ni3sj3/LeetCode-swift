class Solution {
    func isAnagram(s: String, _ t: String) -> Bool {
        var n = s.characters.count
        if (t.characters.count != n){
            return false
        }
        
        var hashMap = [Character:Int]()
        
        for char in s.characters {
            if (hashMap[char] == nil){
                hashMap[char] = 1
            }
            else{
                hashMap[char]!++
            }
        }
        
        for char in t.characters {
            if (hashMap[char] == nil){
                hashMap[char] = 1
            }
            else{
                hashMap[char]!--
            }
        }
        
        for key in hashMap.keys{
            if (hashMap[key] != 0){
                return false
            }
        }
        
        return true
    }
}