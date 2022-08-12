using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Methods
{
    class Program
    {
        static void Main(string[] args)
        {
        }
    }

    class Rectangle
    {
        double hieght, width;

        // Methods operates on the fields aka Data
        // Signature defined by: Method Name & Parameter.
        // [<access mod> <static> <inheritance modifiers> <partial> <unsafe/extern> <async>] <return type> method name(parameters){...}
        public double GetArea()
        {
            return hieght * width;
        }

        // Expression Bodied Methods
        // method header => reurn value;
        // => same as return
        public double Circumference () => 2 * (hieght + width);

        // it also can be void
        public void Print() => Console.Write("Area:{0}\nCircumference:{1}", GetArea(), Circumference());
    }
}
