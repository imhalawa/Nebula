using System;

namespace _3__Company
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("{0}{1}{2}","*******","Comapny Information","*******");
            
            Console.Write("name:");
            string name = Console.ReadLine();

            Console.Write("address:");
            string address = Console.ReadLine();

            Console.Write("phone:");
            string phone = Console.ReadLine();

            Console.Write("number:");
            string number = Console.ReadLine();

            Console.Write("fax:");
            string fax = Console.ReadLine();

            Console.Write("Website:");
            string Website = Console.ReadLine();

            Console.Write("\nYou've been accepted to Join {0}\nPlease Give us a visit on {1}\n and if you have time please give us a call on {2}\n our website:{3}\n",name,address,phone,Website);

        }
    }
}
