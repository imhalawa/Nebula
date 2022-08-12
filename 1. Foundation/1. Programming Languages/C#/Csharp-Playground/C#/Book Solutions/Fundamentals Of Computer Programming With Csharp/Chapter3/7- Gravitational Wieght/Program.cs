using System;

namespace _7__Gravitational_Wieght
{
    class Program
    {
        static void Main(string[] args)
        {
          Console.Write("Weight on Earth:");
          float weight = int.Parse(Console.ReadLine());
          Console.WriteLine("Weight on Moon:"+(weight*(16.5/100)));
        }
    }
}