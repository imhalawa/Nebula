using System.Collections;

namespace _1_TwoSum
{
    public class Hashtable_Solution
    {
        public static int[] TwoSum(int[] nums, int target)
        {
            Hashtable idx = new Hashtable();
            for (int i = 0; i < nums.Length; i++)
            {
                int requiredNumber = target - nums[i];
                if (idx.ContainsKey(requiredNumber))
                {
                    return new int[] { (int)idx[requiredNumber], i };
                }

                if (!idx.ContainsKey(nums[i]))
                {
                    idx.Add(nums[i], i);
                }
            }
            return new int[] { };
        }


    }
}
