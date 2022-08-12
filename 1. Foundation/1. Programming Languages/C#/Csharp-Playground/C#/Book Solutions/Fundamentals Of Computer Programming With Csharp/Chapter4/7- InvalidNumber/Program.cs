using System;

namespace _7__InvalidNumber
{
    class Program
    {
        static void Main(string[] args)
        {
            int i = 1;
            int placeholder=0;
            int sum = 0;

            while (i <= 5)
            {
                Console.Write("Num{0}:", i);
                if (!int.TryParse(Console.ReadLine(),out placeholder))
                {
                    Console.WriteLine("Please enter a valid number");
                    continue;
                }
                sum += placeholder;
                i++;
            }
            Console.WriteLine("Sum:{0}",sum);
        }
    }
}
