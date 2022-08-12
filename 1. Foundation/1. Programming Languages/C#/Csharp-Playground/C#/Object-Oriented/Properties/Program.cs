using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Properties
{
    class Program
    {
        static void Main(string[] args)
        {
        }
    }


    class Profile
    {
        /* List of Content
         * Automatic Props
         * 
         * Write-Only Props
         */

        string address;
        string cvc;
        DateTime dateOfBirth;

        public Profile()
        {
            dateOfBirth = new DateTime(1996, 7, 12);

        }


        // Normal Properties
        public string Address
        {
            get { return address; }
            set
            {
                if (!string.IsNullOrEmpty(value))
                {
                    address = value;
                }
                throw new ArgumentNullException("The Provided address is Empty");
            }
        }

        // Read-only / Calculated Property
        public TimeSpan Age
        {
            get { return DateTime.Now - dateOfBirth; }
        }

        // Expression Bodied Props (Readonly)
        public TimeSpan Age2 => DateTime.Now-dateOfBirth;

        // WriteOnly
        public string CVC
        {
            set
            {
                cvc = value;
            }
        }

        // Automatic Properties
        // It will create it's backing field automatically
        public string Address2 { get; set; }

        // Auto Prop & Props Intializers
        public string CVC2 { get; set; } = "124";
    }
}
