using System;
using System.Diagnostics;
using System.IO;
using System.Text;

namespace _3__LinenumberInsertion
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                StreamReader sr = new StreamReader("code.txt");
                StreamWriter sw = new StreamWriter("code-line.txt", false, Encoding.GetEncoding("utf-8"));
                try
                {
                    int lineNumber = 0;
                    string line = sr.ReadLine();
                    while (line != null)
                    {
                        sw.WriteLine("{0}: {1}", lineNumber, line);
                        line = sr.ReadLine();
                        lineNumber++;
                    }
                }
                finally
                {
                    sr.Close();
                    sw.Close();
                    Process.Start("notepad.exe", "code-line.txt");
                }
            }
            catch (FileNotFoundException ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}
