using System;
using System.Diagnostics;
using System.IO;
using System.Text;

namespace _4__CompareTwoFiles
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Choose 1 of the following Options:");
            Console.WriteLine("1- Show similar and different lines.");
            Console.WriteLine("2- Show different lines only.");
            Console.WriteLine("3- Show similar lines only.");
            int flag = 1;
            try
            {
                Console.Write("Choice:");
                flag = int.Parse(Console.ReadLine());
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }

            try
            {
                StreamReader sr1 = new StreamReader("file1.txt");
                StreamReader sr2 = new StreamReader("file2.txt");
                StreamWriter sw = new StreamWriter("report.txt", false, Encoding.GetEncoding("utf-8"));

                try
                {
                    int lineNumber = 0;
                    string lnf1 = sr1.ReadLine();
                    string lnf2 = sr2.ReadLine();

                    while (!sr1.EndOfStream || !sr2.EndOfStream)
                    {
                        if (lnf1 == lnf2 && (flag==1||flag==3))
                        {
                            sw.WriteLine("Line<{0}> $Same:\n{1}\n", lineNumber+1, lnf1);
                        }
                        else if (lnf1 != lnf2 && (flag == 1 || flag == 2))
                        {
                            sw.WriteLine("Line<{0}> $Different:\nfile1: {1}\nfile2: {2}\n", lineNumber+1, lnf1, lnf2);
                        }
                        lnf1 = sr1.ReadLine();
                        lnf2 = sr2.ReadLine();
                        ++lineNumber;
                    }
                }
                finally
                {
                    sr1.Close();
                    sr2.Close();
                    sw.Close();
                    Process.Start("notepad.exe", "report.txt");
                }
            }
            catch (FileNotFoundException ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}
