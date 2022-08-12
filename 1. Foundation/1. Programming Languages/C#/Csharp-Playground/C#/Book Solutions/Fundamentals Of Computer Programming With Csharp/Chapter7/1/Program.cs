using System;

namespace _1
{
    class Program
    {
        static void Main(string[] args)
        {
           int [] twenty = new int[20];
           for(int i=1; i<=twenty.Length;i++){
               twenty[i-1] = i/4;
               Console.Write("{0} ",twenty[i-1]);
           }
        }
    }
}
