namespace _1_TwoSum
{
    public class EnhancedNaiiveSolution
    {
        public static int[] TwoSum(int[] nums, int target)
        {
            int indexA = -1;
            int indexB = -1;
           

            for (int i = 0; i < nums.Length; i++)
            {
                for (int j = i+1; j < nums.Length; j++)
                {
                    if (nums[i] + nums[j] == target)
                    {
                        indexA = i;
                        indexB = j;
                        break;
                    }        
                }
            }

            return new int[]{indexA,indexB};
        }
    }
}
