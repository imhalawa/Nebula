namespace _217_Contains_Duplicates
{
    public class Solution3
    {
        public static bool ContainsDuplicate(int[] nums)
        {
            QuickSort(nums,0,nums.Length-1);
            for (int i = 0; i < nums.Length - 1; i++)
            {
                if (nums[i] == nums[i + 1])
                {
                    return true;
                }
            }

            return false;
        }


        public static void QuickSort(int[] arr, int low, int high)
        {
            if (low < high)
            {
                // Partitioning Index 
                int pi = Partition(arr, low, high);

                // Quick Sort LHS
                QuickSort(arr,low,pi-1);

                // Quick Sort RHS
                QuickSort(arr,pi+1,high);
            }
        }

        public static int Partition(int[] arr, int low, int high)
        {
            int pivot = arr[high]; // Pivot is always the left most element
            int swapPosition = low - 1;

            for (int i = low; i < high; i++)
            {
                if (pivot >= arr[i])
                {
                    swapPosition++;
                    Swap(arr,swapPosition,i);
                }
            }

            Swap(arr,swapPosition+1,high);
            return swapPosition + 1;
        }


        public static void Swap(int[] arr, int po1, int po2)
        {
            int temp = arr[po1];
            arr[po1] = arr[po2];
            arr[po2] = temp;
        }

    }
}
