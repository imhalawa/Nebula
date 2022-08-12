using System;

namespace _8
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] arr = { 8, 9, 4, 3, 10, 12, 3, 3, 3, 42, 23, 1 };
            arr = selection_sort(arr);
            foreach (int item in arr)
            {
                Console.Write("{0} ", item);
            }
        }

        static int[] selection_sort(int[] arr)
        {
            for (int i = 0; i < arr.Length; i++)
            {
                int smallest = arr[i];
                int index = i;
                for (int j = i; j < arr.Length; j++)
                {
                    if (arr[j] < smallest)
                    {
                        smallest = arr[j];
                        index = j;
                    }
                }
                // swapping
                arr[index] = arr[i];
                arr[i] = smallest;
            }
            return arr;
        }

    }
}
