using System;

namespace _11__Age_After_10_Years
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Enter Your Age: ");
           int age = int.Parse(Console.ReadLine());
           Console.WriteLine($"You'll be {age+10} after ten years");
        }
    }
}
