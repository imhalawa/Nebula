using System;

namespace _6__Greater
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Num1:");
            int number1 = int.Parse(Console.ReadLine());

            Console.Write("Num2:");
            int number2 = int.Parse(Console.ReadLine());

            Console.Write(number1 > number2 ? number1 : number2);
        }
    }
}
