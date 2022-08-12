using System;

namespace _3
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Word1: ");
            string word1_pre = Console.ReadLine();

            Console.Write("Word2: ");
            string word2_pre = Console.ReadLine();

            // perserving the original words via word{n}_pre
            string word1 = word1_pre.ToLower();
            string word2 = word2_pre.ToLower();

            // get the smallest index
            int length = word1.Length < word2.Length ? word1.Length : word2.Length;
            bool equal = false;
            string first = " Both words are the same order";

            for (int i = 0; i < length; i++)
            {
                if (word1[i] != word2[i])
                {
                    equal = false;
                    first = (byte)word1[i] < (byte)word2[i] ? word1_pre : word2_pre;
                    break;
                }
            }
            Console.Write("Equal:{0}\r\nFirst Order:{1}", equal, first);
        }
    }
}
