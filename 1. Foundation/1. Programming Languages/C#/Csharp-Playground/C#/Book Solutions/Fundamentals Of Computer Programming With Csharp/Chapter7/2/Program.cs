using System;

namespace _2
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] arr1 = new int[4];
            int[] arr2 = new int[4];
            bool equal = true;

            // Input
            Console.Write("Array1:\r\n");
            for (int i = 0; i < 4; i++)
            {
                Console.Write("Element{0}:", i);
                arr1[i] = int.Parse(Console.ReadLine());
            }

            Console.Write("Array2:\r\n");
            for (int i = 0; i < 4; i++)
            {
                Console.Write("Element{0}:", i);
                arr2[i] = int.Parse(Console.ReadLine());
            }

            // check whethere they are equal or not
            for (int i = 0; i < 4; i++)
            {
                if (arr1[i] != arr2[i])
                {
                    equal = false;
                    break;
                }
            }
            Console.Write("Result:{0}", (equal ? "Both arrays are equal" : "They aren't equal meeh :( "));
        }
    }
}
