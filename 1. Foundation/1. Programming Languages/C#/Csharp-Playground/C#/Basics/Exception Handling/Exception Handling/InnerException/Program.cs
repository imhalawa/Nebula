using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InnerException
{
    class Program
    {
        static void CauseFormatException()
        {
            string s = Console.ReadLine();
            int.Parse(s);
        }
        static void Main(string[] args)
        {
            try
            {
                CauseFormatException();
            }
            catch(FormatException fe)
            {
                fe.HelpLink = string.Format("https://www.google.com/search?q={0}", fe.Message.Replace(' ','+').TrimEnd('.'));
                Console.Error.WriteLine("Exception:{0}\nGet Help via this link: {1}\nStackTrace:\n{2}", fe.Message, fe.HelpLink, fe.StackTrace);

            }

        }
    }
}
