namespace _53_MaximumSubArray;

public class NaiiveSolution
{
    /// <summary>
    /// The Solution Produces a Time Exceed Error @ LeetCode
    /// </summary>
    /// <param name="nums"></param>
    /// <returns></returns>
    public static int MaxSubArray(int[] nums)
    {
        if (nums.Length == 1) return nums[0];

        int maximumContagiousSubArray = int.MinValue;
        for (int i = 0; i < nums.Length; i++)
        {
            int currentSum = nums[i];
            for (int j = i+1; j < nums.Length; j++)
            {
                if (maximumContagiousSubArray < currentSum) maximumContagiousSubArray = currentSum;
                currentSum += nums[j];
            }

            if (maximumContagiousSubArray < currentSum) maximumContagiousSubArray = currentSum;
        }

        return maximumContagiousSubArray;
    }
}