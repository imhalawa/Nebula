using System;
namespace _10__4_Digits_4_Operations
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Enter 4 Digit numbers like '2012': ");
            string stream  = Console.ReadLine();
            // get summation of 4 digits
            Console.WriteLine("Sum: "+Sum(stream));
            Console.WriteLine("reverse: "+reverse(stream));
            Console.WriteLine("get_the_last_to_beginning: "+get_the_last_to_beginning(stream));
            Console.WriteLine("Swap 2 in middle: "+swap(stream));
        }

        static int Sum(string in_stream){
            int sum = 0;
            for(int i =0; i< in_stream.Length;i++){
              sum += Convert.ToInt32(in_stream[i].ToString());
            }
            return sum;
        }

        static string reverse(string in_stream){
            char [] temp = in_stream.ToCharArray();
            Array.Reverse(temp);
            return new string(temp);
        }

        static string get_the_last_to_beginning(string in_stream){
            char [] temp = in_stream.ToCharArray();
            char holder = temp[temp.Length-1];
            for( int i = temp.Length-2; i >-1 ;i--){
                temp[i+1]=temp[i];
            }
            temp[0]=holder;
            return new string(temp);
        }

            static string swap(string in_stream){
            char [] temp = in_stream.ToCharArray();
            char holder= temp[2];
            temp[2] = temp[1];
            temp[1] = holder;
            return new string(temp);
        }
    }
}
