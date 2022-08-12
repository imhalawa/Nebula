using System;

namespace _1__ReadIntegersFromConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Numbers: ");
            string [] in_stream = Console.ReadLine().Split(' ');
            double sum =0;
            foreach (string item in in_stream)
            {
                sum+=double.Parse(item);
            }
            Console.WriteLine("Sum:{0}",sum);
        }
    }
}
