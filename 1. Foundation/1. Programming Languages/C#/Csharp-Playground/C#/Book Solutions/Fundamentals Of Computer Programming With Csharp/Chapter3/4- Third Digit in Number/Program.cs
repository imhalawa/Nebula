using System;

namespace _4__Third_Digit_in_Number
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("number:");
            int number = int.Parse(Console.ReadLine());
            Console.WriteLine((number>>2)%2==1?"3rd bit is assigned":"3rd bit is not assigned");
        }
    }
}
