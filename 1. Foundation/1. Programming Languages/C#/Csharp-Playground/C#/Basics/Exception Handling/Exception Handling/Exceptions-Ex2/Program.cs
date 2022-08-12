using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exceptions_Ex2
{
    class Program
    {
        static void Main(string[] args)
        {
            int count = 0, invalid = 0;
            for(int i = 0; i < 10; i++)
            {
                try
                {
                    ReadNumber(1, 100);
                    ++count;
                }
                catch(Exception e)
                {
                    Console.WriteLine(e.Message);
                    ++invalid;
                }
            }

            Console.WriteLine("You Entered {0} Correct Numbers & {1} Invalid Numbers",count,invalid);
        }

        static int ReadNumber(int start, int end)
        {
            string s = Console.ReadLine();
            try
            {
                int n = int.Parse(s);
                if (n > start && n < end)
                {
                    return n;
                }
            }
            catch(FormatException fe)
            {
                Console.WriteLine("Exception:{0}\nStackTrace:\n{1}",fe.Message,fe.StackTrace);
            }
            catch(OverflowException oe)
            {
                Console.WriteLine("Exception:{0}\nStackTrace:\n{1}",oe.Message,oe.StackTrace);
            }
            throw new Exception(string.Format("The given number is not in range ]{0},{1}[", start, end));
        }
    }
}
