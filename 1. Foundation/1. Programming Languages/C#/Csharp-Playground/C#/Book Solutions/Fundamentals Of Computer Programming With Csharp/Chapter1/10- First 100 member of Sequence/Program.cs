using System;

namespace _10__First_100_member_of_Sequence
{
    class Program
    {
        static void Main(string[] args)
        {
            bool SFlag = true; // true if positive. else negative

            for (int i = 0; i < 100; i++)
            {
                if (SFlag)
                {
                    Console.Write($"{i+2}, ");
                    SFlag = false;
                }
                else
                {
                    Console.Write($"-{i+2}, ");
                    SFlag = true;
                }
            }
        }
    }
}
