namespace _53_MaximumSubArray
{
    public class LinearSolution
    {
        public static int MaxSubArray(int[] nums)
        {
            int maxSum = nums[0];
            int currentSum = 0;

            for (int i = 0; i < nums.Length; i++)
            {
                if (currentSum < 0) currentSum = 0;
                currentSum += nums[i];
                if (maxSum < currentSum) maxSum = currentSum;
            }

            return maxSum;
        }
    }
}
