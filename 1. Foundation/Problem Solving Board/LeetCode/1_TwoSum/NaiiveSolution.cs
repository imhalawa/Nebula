namespace _1_TwoSum
{
    public class NaiiveSolution
    {
        public static int[] TwoSum(int[] nums, int target)
        {
            int indexA = -1;
            int indexB = -1;


            for (int i = 0; i < nums.Length; i++)
            {
                for (int j = 0; j < nums.Length; j++)
                {
                    if (nums[i] + nums[j] == target && i != j)
                    {
                        indexA = j;
                        indexB = i;
                        break;
                    }
                }
            }

            return new int[] { indexA, indexB };
        }
    }
}
