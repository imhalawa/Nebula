using System;

namespace _3__Compare_Accurately_Two_Numbers
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Number1: ");
            double number1 = Double.Parse(Console.ReadLine());

            Console.Write("Number2: ");
            double number2 = Double.Parse(Console.ReadLine());

            // Comparing Numbers 
            bool areEqual = Math.Abs(number2-number1)<0.000001;
            Console.WriteLine(areEqual?"Yup, They Are Equal ..":"Nope, They are not Equal");
        }
    }
}
