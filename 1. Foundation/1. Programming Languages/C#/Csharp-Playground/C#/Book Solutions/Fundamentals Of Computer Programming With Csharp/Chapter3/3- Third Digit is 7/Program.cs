using System;

namespace _3__Third_Digit_is_7
{
    class Program
    {
        static void Main(string[] args)
        {
           Console.Write("Enter Number: ");
           uint number = uint.Parse(Console.ReadLine())%1000;
           Console.WriteLine((number/7)>=100 && (number/7)<=114?"Yes":"No");
        }
    }
}
