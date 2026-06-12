/*
3. Longest Substring Without Repeating Characters

Given a string s, find the length of the longest substring without duplicate characters.


Example 1:

Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3. Note that "bca" and "cab" are also correct answers.
Example 2:

Input: s = "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
Example 3:

Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
 

Constraints:

0 <= s.length <= 5 * 104
s consists of English letters, digits, symbols and spaces.
*/

class Solution {

    func lengthOfLongestSubstring(_ s: String) -> Int {

        if (s.isEmpty){
            return 0
        }
        
        let chars = Array(s)
        var i = 0
        var j = 1
        var lettersWithoutRepetition: Set<Character> = [chars[0]] // ventana
        var res = lettersWithoutRepetition.count

        while j < chars.count {

            if (lettersWithoutRepetition.contains(chars[j])) {
                lettersWithoutRepetition.remove(chars[i])
                i += 1
            }
            else if (chars[i] != chars[j]) {
                lettersWithoutRepetition.insert(chars[j])
                if (res < lettersWithoutRepetition.count) {
                    res = lettersWithoutRepetition.count
                }
                j += 1
            } else if (chars[i] == chars[j]) {
                if (res < lettersWithoutRepetition.count) {
                    res = lettersWithoutRepetition.count
                }
                lettersWithoutRepetition.insert(chars[i])
                j += 1
            }
        }

        return res
    }
}

let sol = Solution()

// Example 1
let r1 = sol.lengthOfLongestSubstring("abcabcbb")
print("Example 1:", r1)  // Output: 3

// Example 2
let r2 = sol.lengthOfLongestSubstring("bbbbb")
print("Example 2:", r2)  // Output: 1

// Example 3
let r3 = sol.lengthOfLongestSubstring("pwwkew")
print("Example 3:", r3)  // Output: 3