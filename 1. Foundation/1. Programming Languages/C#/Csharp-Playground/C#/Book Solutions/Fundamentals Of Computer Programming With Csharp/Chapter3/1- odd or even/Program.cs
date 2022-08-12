using System;

namespace _1__odd_or_even
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Number: ");
            int number = int.Parse(Console.ReadLine());
            Console.WriteLine(number%2==0?"Even":"Odd");
        }
    }
}
