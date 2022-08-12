using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exception_Handling
{
    class Program
    {
        static void Main(string[] args)
        {

            string s = Console.ReadLine();
            try
            {
                int.Parse(s);
                Console.WriteLine("You've entered valid integer number {0}", s);
            }
            catch (FormatException)
            {
                Console.WriteLine("Invalid Integer Number!");
            }
            catch (OverflowException)
            {
                Console.WriteLine("The number is too long to fit in Int32 type.");
            }
        }
    }
}
