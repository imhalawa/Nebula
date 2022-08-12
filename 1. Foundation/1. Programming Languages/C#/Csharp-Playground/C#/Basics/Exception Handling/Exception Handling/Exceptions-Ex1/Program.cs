using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exceptions_Ex1
{
    class Program
    {

        static void Main(string[] args)
        {
            string s = Console.ReadLine();
            int input;
            try
            {
                input = int.Parse(s);
                Console.WriteLine("Sqrt of {0} is {1}",input,CalcSqrt(input)); 
            }
            catch (FormatException)
            {
                Console.WriteLine("The Input you provided isn't an integer.");
            }
            catch (OverflowException)
            {
                Console.WriteLine("the number you provided is too long!");
            }
            catch (ArithmeticException ae)
            {
                Console.WriteLine(ae.Message);
            }
            finally
            {
                Console.WriteLine("Good Bye");
            }
        }

        static double CalcSqrt(double n)
        {
            if (n < 0)
            {
                throw new ArithmeticException("the square root of negative numbers is Undefined.");
            }
            return Math.Sqrt(n);
        }
    }
}
