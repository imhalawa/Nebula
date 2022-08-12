using System;
using System.Collections.Generic;
namespace _4
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Sequence:");
            string Sequence = Console.ReadLine();

            List<string> subsets = subset(Sequence);

            int biggest = 0;
            string seq = "";

            foreach (var item in subsets)
            {
                int s = sum(item);
                if (s > biggest)
                {
                    biggest = s;
                    seq = item;
                }
            }

            Console.Write("Sequence:{0}\r\nSum:{1}", seq, biggest);

        }

        static List<string> subset(string Sequence)
        {
            List<string> subsets = new List<string>();
            string subset_placeholder = "" + Sequence[0];
            for (int i = 1; i < Sequence.Length; i++)
            {
                if (Sequence[i] != Sequence[i - 1] || i == Sequence.Length - 1)
                {
                    if (i == Sequence.Length - 1) subset_placeholder += Sequence[i];
                    subsets.Add(subset_placeholder);
                    subset_placeholder = "" + Sequence[i];
                }
                else
                {
                    subset_placeholder += Sequence[i];
                }
            }
            return subsets;
        }

        static int sum(string subset)
        {
            int sum = 0;
            for (int i = 0; i < subset.Length; i++)
            {
                sum += int.Parse(subset[i].ToString());
            }
            return sum;
        }


    }
}
