using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _5__Matrix_maximal_square
{
    class Program
    {
        static void Main(string[] args)
        {
            // Extracting the matrix
            try
            {
                StreamReader sr = new StreamReader("input.txt");
                try
                {
                    int matrixSize = int.Parse(sr.ReadLine());
                    int[,] matrix = new int[matrixSize, matrixSize];

                    // filling the matrix
                    for (int i = 0; i < matrixSize ; i++)
                    {
                        string[] line = sr.ReadLine().Split(' ');
                        for (int j = 0; j < matrixSize; j++)
                        {
                            matrix[i, j] = int.Parse(line[j]);
                        }
                    }

                    // calculating
                    List<int> sums = new List<int>();
                    for (int i = 0; i <= matrixSize - 2; i++)
                    {
                        for (int j = 0; j <= matrixSize - 2; j++)
                        {
                            sums.Add(matrix[i, j] + matrix[i, j + 1] + matrix[i + 1, j] + matrix[i + 1, j + 1]);
                        }
                    }

                    sums.Sort();
                    Console.WriteLine("Highest Sum: {0}",sums[sums.Count-1]);
;                }
                finally
                {
                    sr.Close();
                }
            }
            catch (FileNotFoundException ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}
