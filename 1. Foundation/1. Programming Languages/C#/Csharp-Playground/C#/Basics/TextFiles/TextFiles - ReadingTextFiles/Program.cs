using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TextFiles___ReadingTextFiles
{
    class Program
    {
        static void Main(string[] args)
        {
            // simplest way to read a file's content
            // using clause will automatically call the sr.Close method to release resources
            //using (StreamReader sr = new StreamReader("sample1.txt"))
            //{
            //    string firstline = sr.ReadLine();
            //    string secondline = sr.ReadLine();
            //    string restOfContent = sr.ReadToEnd();

            //    Console.WriteLine("Line1:{0}", firstline);
            //    Console.WriteLine("Line2:{0}", secondline);
            //    Console.WriteLine("\nRest Of Content:\n\n{0}", restOfContent);
            //}

            using (StreamReader srEncoding = new StreamReader("sample1.txt", Encoding.GetEncoding("windows-1251")))
            {
                int lineNumber = 0;
                string line = srEncoding.ReadLine();
                while(line != null)
                {
                    Console.WriteLine("Line{0}: {1}",++lineNumber,line);
                    line = srEncoding.ReadLine();
                }

            }
        }
    }
}
