using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Fields
{
    class Program
    {
        // Fields are variables that defined within class/struct clauses.
        // By default they are private and they should remain private as a best practice.
        // We can control thier accessibility using properties.
        // Definition: <access mod> <static/instance> <type> fieldName [= <initial_Value>;]
        // Example:
        // -----------

        string app_verison = "v1.0";
        double max_threads = 4;

        static void Main(string[] args)
        {

        }
    }

    class IdCard
    {
        // these fields describes the IdCard of Someone
        string NationalNumber;
        string Name;
        byte age;
        string address1;
        string address2;
        string website;
        string biography;
    }

    class Info
    {
        // Readonly fields prevent changing values after being assigned;
        // They can only assigned via: 1- Intialization, 2- Constructor
        readonly int id,age;
        Info()
        {
            id = 5;
        }

        void SetId(int id)
        {
            //id = id;
        }
    }
}
