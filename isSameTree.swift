/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    func isSameTree(p: TreeNode?, _ q: TreeNode?) -> Bool {
        if (p?.val != q?.val){
            return false
        }
            
        if(isEndNode(p) && isEndNode(q)){
            return true
        }
        
        return (isSameTree(p?.left,q?.left) && isSameTree(p?.right,q?.right))
    }
    
    func isEndNode(n: TreeNode?) -> Bool {
        if (n?.left == nil && n?.right == nil){
            return true
        }
        return false
    }
}