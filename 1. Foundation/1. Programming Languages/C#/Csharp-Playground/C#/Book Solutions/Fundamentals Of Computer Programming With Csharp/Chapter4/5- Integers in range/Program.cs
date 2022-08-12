using System;

namespace _5__Integers_in_range
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Start:");
            int start = int.Parse(Console.ReadLine());

            Console.Write("End:");
            int end = int.Parse(Console.ReadLine());

            for (int i = start; i <= end;i++)
            {
                if (i % 5 == 0)
                {
                    Console.Write("{0} ", i);
                }
            }
        }
    }
}
