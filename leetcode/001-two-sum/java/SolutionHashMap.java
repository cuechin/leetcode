import java.util.Arrays;
import java.util.HashMap;

class SolutionHashMap {
    public int[] twoSum(int[] nums, int target) {

        HashMap<Integer, Integer> seen = new HashMap<>();

        for (int i = 0; i < nums.length; i++) {
            int complement = target - nums[i];
            if (seen.containsKey(complement)) {
                return new int[]{seen.get(complement), i};
            } else {
                seen.put(nums[i], i);
            }
        }

        return new int[] {};
    }

    public static void main(String[] args) {

        SolutionHashMap solution = new SolutionHashMap();

        int[] nums = { 2, 7, 11, 15 };
        int target = 9;

        int[] result = solution.twoSum(nums, target);

        System.out.println(Arrays.toString(result));
    }
}