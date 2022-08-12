using System;

namespace _8__Point_Within_Range
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("X:");
            int x = int.Parse(Console.ReadLine());
            
            Console.Write("Y:");
            int y = int.Parse(Console.ReadLine());

            bool expression = ((x<= 5 && x >= -5)&&(y<=5 && y>=-5)); 
            Console.WriteLine($"Within Range:{(expression?"Yes":"No")}");
        }
    }
}
