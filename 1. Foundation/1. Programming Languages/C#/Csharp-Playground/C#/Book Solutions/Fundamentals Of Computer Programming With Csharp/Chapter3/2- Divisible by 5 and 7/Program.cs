using System;

namespace _2__Divisible_by_5_and_7
{
    class Program
    {
        static void Main(string[] args)
        {
           Console.Write("Number: ");
           int number = int.Parse(Console.ReadLine());
           Console.WriteLine(number%5==0 && number%7==0?"Passed":"Failed");
        }
    }
}
