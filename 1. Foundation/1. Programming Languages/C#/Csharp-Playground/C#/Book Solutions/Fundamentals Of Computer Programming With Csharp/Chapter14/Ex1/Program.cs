using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ex1
{
    class Program
    {
        static void Main(string[] args)
        {



        }
    }


    class Student
    {
        // Static Fields
        static uint count;

        // Instance Fields
        string name, course, subject, university, email, phone;

        // Constructors
        public Student()
        {
            count++;
        }

        public Student(string name,string university, string email, string phone, string course, string subject)
        {
            this.name = name;
            this.course = course;
            this.subject = subject;
            this.university = university;
            this.email = email;
            this.phone = phone;
            count++;
        }


        // Static Property
        public static uint Count => count;



    }
}
