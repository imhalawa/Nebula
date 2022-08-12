using System;

namespace _5__Area_of_Trapezoid
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Dimensions --->\n");
            Console.Write("Height:");
            float h= float.Parse(Console.ReadLine());

            Console.Write("Upper Line:");
            float a= float.Parse(Console.ReadLine());
            
            Console.Write("Lower Line:");
            float b= float.Parse(Console.ReadLine());

            Console.WriteLine("Area of Trapezoid:"+((a+b)/2)*h);
        }
    }
}
