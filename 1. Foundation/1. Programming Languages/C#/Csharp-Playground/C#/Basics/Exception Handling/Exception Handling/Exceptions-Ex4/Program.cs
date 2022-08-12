using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace Exceptions_Ex4
{
    class Program
    {
        static void Main(string[] args)
        {
            WebClient client = new WebClient();
            Console.Write("Paste file's Url here: ");
            string fileUrl = Console.ReadLine();
            Console.Write("Name On Disk(filename.ext): ");
            string filename = Console.ReadLine();
            try
            {

                Console.WriteLine("Download Started...");
                client.DownloadFile(fileUrl, filename);

                if (File.Exists(filename))
                {
                    Console.WriteLine("File Has Successfully Downloaded...");
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                // handling multiple exceptions at once
                if (e is ArgumentNullException || e is WebException)
                {
                    Console.WriteLine("Please note that both(fileurl,filename) are mandatory inputs");
                    return;
                }
                if (e is ArgumentException)
                {
                    Console.WriteLine("Either you provided an empty filename or the path you provided is invalid.");
                    return;
                }
                throw;
            }
            finally
            {
                client.Dispose();
            }

        }

    }
}
