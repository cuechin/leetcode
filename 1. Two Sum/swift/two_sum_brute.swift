class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in nums.indices {
            for j in nums.indices {
                if (nums[i] + nums[j] == target && i != j){
                    return [i,j]
                }
            }
        }
        return []
    }
}

let sol = Solution()

// Caso 1
let r1 = sol.twoSum([2, 7, 11, 15], 9)
print("Caso 1:", r1)  // Output esperado: [0, 1]

// Caso 2
let r2 = sol.twoSum([3, 2, 4], 6)
print("Caso 2:", r2)  // Output esperado: [1, 2]

// Caso 3
let r3 = sol.twoSum([3, 3], 6)
print("Caso 3:", r3)  // Output esperado: [0, 1]