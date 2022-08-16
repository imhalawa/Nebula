using System.Collections;

namespace _217_Contains_Duplicates
{
    public class Solution1
    {
        public static bool ContainsDuplicate(int[] nums)
        {
            Hashtable table = new Hashtable();

            for (int i = 0; i < nums.Length; i++)
            { 
                if(table.ContainsKey(nums[i]))
                {
                    return true;
                }
                else
                {
                    table.Add(nums[i],1);
                }
            }
            return false;
        }
    }
}
