using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2__Concatenate_2_files_into_1
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] files = new string[2];
            try
            {
                for (int i = 0; i < files.Length; i++)
                {
                    using (StreamReader sr = new StreamReader(string.Format("file{0}.txt", i+1)))
                    {
                        files[i] = sr.ReadToEnd();
                    }
                }

                using (StreamWriter sw = new StreamWriter("merged.txt", false, Encoding.GetEncoding("utf-8")))
                {
                    sw.WriteLine("File1\n---------------------------------------------\n");
                    sw.WriteLine(files[0]);
                    sw.WriteLine("File2\n---------------------------------------------\n");
                    sw.WriteLine(files[1]);
                }
                // open merged file
                Process.Start("notepad.exe", "merged.txt");
            }
            catch(FileNotFoundException fe)
            {
                Console.WriteLine(fe.Message);
            }
        }
    }
}
