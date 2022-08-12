using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TextFiles___Writing_TextFiles
{
    class Program
    {
        static void Main(string[] args)
        {

            // streamWriter Class
            // it's important to define the encoding
            string filename = "sample.txt";
            using (StreamWriter sw = new StreamWriter(filename, false, Encoding.GetEncoding("utf-8")))
            {
                sw.AutoFlush = false;
                for (int j = 0; j < 100; ++j)
                {
                    //sw.Write("{0} ", i);
                    sw.WriteLine("{0} ", j);
                }
            }
            Console.WriteLine("File Content:");
            using (StreamReader sr = new StreamReader(filename))
            {
                Console.WriteLine(sr.ReadToEnd());
            }

        }
    }
}
