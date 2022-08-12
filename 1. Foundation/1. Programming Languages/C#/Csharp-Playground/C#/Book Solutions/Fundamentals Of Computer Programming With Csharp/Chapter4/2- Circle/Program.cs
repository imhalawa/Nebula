using System;

namespace _2__Circle
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Radius:");
            float radius = float.Parse(Console.ReadLine());
            float preimeter = 2* radius *(float) System.Math.PI;
            float area = (float)(System.Math.PI * System.Math.Pow(radius,2));
            Console.WriteLine("Preimeter:{0}\nArea:{1}",preimeter,area); 
        }
    }
}
