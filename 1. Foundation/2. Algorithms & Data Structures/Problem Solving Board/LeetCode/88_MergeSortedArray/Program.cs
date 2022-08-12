using _88_MergeSortedArray;

int[] num1 = { 0, 0, 3, 0, 0, 0, 0, 0, 0 };
int m = 3;
int[] num2 = { -1, 1, 1, 1, 2, 3 };
int n = 6;


NaiiveSolution.Merge(num1, m, num2, n);


for (int i = 0; i < num1.Length; i++)
{
    Console.WriteLine(num1[i]);
}