namespace _88_MergeSortedArray
{
    public class NaiiveSolution
    {
        public static void Merge(int[] nums1, int m, int[] nums2, int n)
        {
            // Initial Merge
            for (int i = 0; i < n; i++)
            {
                nums1[m + i] = nums2[i];
            }

            // Do A QuickSort
            QuickSort(nums1,0,nums1.Length-1);
        }

        public static void QuickSort(int[] arr, int low, int high)
        {
            if (low < high)
            {
                int pivotIndex = Partition(arr, low, high);

                QuickSort(arr,low,pivotIndex-1);

                QuickSort(arr,pivotIndex+1,high);
            }
        }

        public static int Partition(int[] arr, int low, int high)
        {
            int pivot = arr[high];
            int swapPosition = low - 1;

            for (int i = low; i < high; i++)
            {
                if (pivot >= arr[i])
                {
                    swapPosition++;
                    (arr[swapPosition], arr[i]) = (arr[i], arr[swapPosition]);
                }
            }
            (arr[swapPosition + 1], arr[high]) = (arr[high], arr[swapPosition+1]);
            return swapPosition+1;
        }
    }
}
