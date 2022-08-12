using System;

namespace _12__Swapping_Values
{
    class Program
    {
        static void Main(string[] args)
        {
           int num1 = 5;
           int num2 = 10;

           // Swapping 
           num1 = num1 + num2;
           num2 = num1 - num2;
           num1 = num1 - num2;

           Console.WriteLine(num1);
           Console.WriteLine(num2);

        }
    }
}
