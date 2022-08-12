using System;

namespace _4
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("List(seperate numbers with space):");
            int[] list = Array.ConvertAll<string, int>(Console.ReadLine().Split(' '), int.Parse);


            Console.Write("Number:");
            int n = int.Parse(Console.ReadLine());

            Console.WriteLine("Occurences:{0}", GetOccurenceOfNumber(n, list));
        }

        static int GetOccurenceOfNumber(int number, int[] list)
        {
            int counter = 0;
            foreach (int n in list)
            {
                if (n == number) counter++;
            }
            return counter;
        }
    }
}
