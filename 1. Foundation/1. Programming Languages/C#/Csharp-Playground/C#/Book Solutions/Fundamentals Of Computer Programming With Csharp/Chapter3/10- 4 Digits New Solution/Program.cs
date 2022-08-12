using System;

namespace _10__4_Digits_New_Solution
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digits(????):");
            int digits = int.Parse(Console.ReadLine());
            int d = digits % 10;
            int c = (digits / 10) % 10;
            int b = (digits / 100) % 10;
            int a = (digits / 1000) % 10;


            Console.WriteLine("Sum: "+(a+b+c+d));
            Console.WriteLine("Reverse: "+d+c+b+a);
            Console.WriteLine("last at first: "+d+a+b+c);
            Console.WriteLine("Swap: "+a+c+b+d);

        }
    }
}
