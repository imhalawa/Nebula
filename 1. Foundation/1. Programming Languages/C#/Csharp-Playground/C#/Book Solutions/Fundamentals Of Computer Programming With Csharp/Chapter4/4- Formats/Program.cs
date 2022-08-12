using System;

namespace _4__Formats
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("{0,-10}{1,-10}{2,-10}","number1","number2","number3");
            Console.WriteLine("{0,-10:x}{1,-10:f2}{2,-10:f2}",234,234.2223,-234.2223);
        }
    }
}
