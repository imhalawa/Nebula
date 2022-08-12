using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _1__OddLines
{
    class Program
    {
        static void Main(string[] args)
        {
            using (StreamReader sr = new StreamReader("whytext.txt")){
                string line = sr.ReadLine();
                int i = 0;
                while (line!=null)
                {
                    if (i % 2 == 1) { Console.WriteLine(line); }
                    line = sr.ReadLine();
                    i++;
                }
            }
        }
    }
}
