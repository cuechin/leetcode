class Solution {
    public int removeElement(int[] nums, int val) {

        int k = 0;

        for(int i = 0; i <= nums.length - 1; i++) {
            if (nums[i] != val){
                nums[k] = nums[i];
                k++;
            }
        }

        return k;
    }

    public static void main(String[] args) {

        Solution solution = new Solution();

        int[] nums = { 0, 1, 2, 2, 3, 0, 4, 2 };
        int target = 2;

        int result = solution.removeElement(nums, target);

        System.out.println(result);
    }

}