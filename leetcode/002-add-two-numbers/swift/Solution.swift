/*
2. Add Two Numbers

You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.
You may assume the two numbers do not contain any leading zero, except the number 0 itself.

Example 1:

Input: l1 = [2,4,3], l2 = [5,6,4]
Output: 
Explanation: 342 + 465 = 807.

Example 2:

Input: l1 = [0], l2 = [0]
Output: [0]
Example 3:

Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
Output: [8,9,9,9,0,0,0,1]
*/
 
 
 // Definition for singly-linked list.
  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  } 

class Solution {

    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var carry = 0
        var l1 = l1
        var l2 = l2

        var dummy = ListNode(0)
        var tail = dummy

        while l1 != nil || l2 != nil || carry > 0 {
            let val1 = l1?.val ?? 0
            let val2 = l2?.val ?? 0
            let sum = val1 + val2 + carry

            carry = sum / 10
            tail.next = ListNode(sum % 10)
            tail = tail.next!

            l1 = l1?.next
            l2 = l2?.next

        }

        return dummy.next
    }
}

let sol = Solution()

// Caso 1
let l1 = ListNode(2, ListNode(4, ListNode(3))) // [2,4,3]
let l2 = ListNode(5, ListNode(6, ListNode(4))) // [5,6,4]
let r1 = sol.addTwoNumbers(l1, l2)
print("Caso 1:", r1)  // Output esperado: [7,0,8]