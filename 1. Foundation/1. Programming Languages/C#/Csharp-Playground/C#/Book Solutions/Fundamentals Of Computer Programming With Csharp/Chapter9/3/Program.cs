using System;

namespace _3
{
    class Program
    {
        static void Main(string[] args)
        {
            int number;
            
            do
            {
            Console.Write("Enter Number:");
            }
            while (!int.TryParse(Console.ReadLine(),out number));


            Console.Write(GetNameOfLastDigit(number));
        }
        static string GetNameOfLastDigit(int number)
        {
            int lastDigit = number % 10;
            string name = "";
            switch (lastDigit)
            {
                case 0:
                    name = "Zero";
                    break;
                case 1:
                    name = "One";
                    break;
                case 2:
                    name = "Two";
                    break;
                case 3:
                    name = "Three";
                    break;
                case 4:
                    name = "Four";
                    break;
                case 5:
                    name = "Five";
                    break;
                case 6:
                    name = "Six";
                    break;
                case 7:
                    name = "Seven";
                    break;
                case 8:
                    name = "Eight";
                    break;
                case 9:
                    name = "Nine";
                    break;
                default:
                    throw new InvalidOperationException();
                    break;
            }
            return name;
        }
    }
}
