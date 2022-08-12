using System;
using System.IO;
using System.Windows.Forms;
namespace Exceptions_Ex3
{
    class Program
    {
        [STAThread]
        static void Main(string[] args)
        {
            OpenFileDialog fd = new OpenFileDialog();
            fd.Filter = "Text files (*.txt)|*.txt";
            try
            {

                if (fd.ShowDialog() == DialogResult.OK)
                {
                    string fileContent = File.ReadAllText(fd.FileName);
                    Console.WriteLine(fileContent);
                }

            }
            catch (FileNotFoundException)
            {
                Console.Write("File Is either removed, moved or renamed. Please Double check your selected file.");
            }
            Console.ReadKey();
        }
    }
}
