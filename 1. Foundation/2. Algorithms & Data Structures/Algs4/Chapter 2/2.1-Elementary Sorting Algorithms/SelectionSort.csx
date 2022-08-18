#r "nuget: ObjectDumper.NET, 3.4.6"
using System;

Client();

public static void Client()
{
    int[] unsorted_array = { 8,9,2,78,5,4,6,3,34 };
    int[] sortedArray = Sort(unsorted_array);
    Console.WriteLine(ObjectDumper.Dump(sortedArray));
}

/// <summary>
/// Use Selection Sort algorithm to re-arrange elements in increasing order within the array
/// </summary>
/// <param name="arr"></param>
/// <returns></returns>
public static int[] Sort(int[] arr)
{
    int N = arr.Length;
    for (int i = 0; i < N; i++)
    {
        // index of minimal enter
        int min = i;

        // Find Smallest Number in remaining sequence
        for (int j = i; j < N; j++)
        {
            if (arr[j].CompareTo(arr[min]) < 0)
            {
                min = j;
            }
        }

        // Swap with ith Element
        Swap(ref arr[i], ref arr[min]);
    }
    return arr;
}

public static void Swap(ref int a, ref int b)
{
    (b, a) = (a, b);
}