using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Generics
{
    class Program
    {
        static void Main(string[] args)
        {
            string str1 = "Str1";
            string str2 = "Str2";

            int int1 = 5;
            int int2 = 6;

            Console.WriteLine(str1 + "/" + str2);
            Console.WriteLine(int1 + "/" + int2);
            Console.WriteLine("Swapping ...");

            GenericSwap<string>.Swap(ref str1, ref str2);
            GenericSwap<int>.Swap(ref int1, ref int2);

            Console.WriteLine(str1+"/"+str2);
            Console.WriteLine(int1+"/"+int2);
        }
    }

   static class GenericSwap<T>
    {
        public static void Swap(ref T a,ref T b)
        {
            T temp = a;
            a = b;
            b = temp;
        }
    }
}
