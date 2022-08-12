using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FixingSubtitles
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                StreamReader sr = new StreamReader("subtitle.srt");
                StreamWriter sw = new StreamWriter("subtitle_fixed.srt", false, Encoding.GetEncoding("utf-8"));
                try
                {
                    int lineNumber = 1;
                    string line = sr.ReadLine();
                    while (line != null)
                    {
                        sw.WriteLine(FixLine(line, lineNumber) + "\n");
                        line = sr.ReadLine();
                        lineNumber++;
                    }
                }
                finally
                {
                    sr.Close();
                    sw.Close();
                }
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

        }

        static string FixLine(string line, int lineNumber)
        {
            // processing time
            string[] time = line.Split(' ')[0].Split(new char[] { '{', '}' });
            string start = string.Format("00:{0}{1}:{2}{3},000", time[1][0], time[1][1], time[1][2], time[1][3]);
            string end = string.Format("00:{0}{1}:{2}{3},000", time[3][0], time[3][1], time[3][2], time[3][3]);

            // processing text
            string[] temp_text = line.Split(' ');
            string text = string.Join(" ", temp_text, 1, (temp_text.Length - 1));

            // Joining
            string result = string.Format("{0}\n{1} --> {2}\n{3}", lineNumber, start, end, text);
            return result;
        }
    }
}
