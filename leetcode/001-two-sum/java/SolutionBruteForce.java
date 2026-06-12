import java.util.ArrayList;
import java.util.Arrays;

class SolutionBruteForce {
    public int[] twoSum(int[] nums, int target) {

        for (int i = 0; i < nums.length; i++) {
            for (int j = 0; j < nums.length; j++) {
                if (i != j && nums[i] + nums[j] == target) {
                    return new int[] { i, j };
                }
            }
        }

        return new int[] {};
    }

    public static void main(String[] args) {

        SolutionBruteForce solution = new SolutionBruteForce();

        int[] nums = { 3, 3 };
        int target = 6;

        int[] result = solution.twoSum(nums, target);

        System.out.println(Arrays.toString(result));
    }
}