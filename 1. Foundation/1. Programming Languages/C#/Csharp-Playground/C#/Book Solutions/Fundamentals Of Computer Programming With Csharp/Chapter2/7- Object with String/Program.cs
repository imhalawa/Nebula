using System;

namespace _7__Object_with_String
{
    class Program
    {
        static void Main(string[] args)
        {
            
            string hello ="Hello";
            string world = "World";
            object greeting = hello+" "+world;
            string greet = (string)greeting;
            Console.Write(greet);
        }
    }
}
