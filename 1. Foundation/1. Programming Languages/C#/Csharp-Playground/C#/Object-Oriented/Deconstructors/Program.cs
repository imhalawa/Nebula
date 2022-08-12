using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Deconstructors
{
    class Program
    {
        static void Main(string[] args)
        {
            Rectangle rect = new Rectangle(4, 5);

            // deconstructing assignement
            // the braces called tuple, and it's used with multiple return methods
            (float width, float height) = rect;
           
            // shortcut
            var (wid, hei) = rect;

            // shortcut2
            float wi, he;
            (wi, he) = rect;

            // also equal to
            float w, h;
            rect.Deconstruct(out w, out h);

            // also equal to: 
            rect.Deconstruct(out float x, out float y);

            Console.WriteLine(width + " " + height);
            Console.WriteLine(w + " " + h);
            Console.WriteLine(x + " " + y);

            // however the rect object still exists, it's just 
            Console.WriteLine(rect._height + " " + rect._width);
        }
    }

    class Rectangle
    {
        public readonly float _width, _height;
        public Rectangle(float width, float height)
        {
            _width = width;
            _height = height;

            Console.WriteLine("I've Constructed a Rectangle with Dimensions: ({0},{1})", height, width);
        }



        // Deconstructor
        // it's a normal method, but the epic part is it's name: Deconstruct.
        // it's just reset the fields making the object plain.
        // it must have one or more out parameters
        // it can be an extension method

        public void Deconstruct(out float width, out float height)
        {
            Console.WriteLine("The Rectangle is being decontructed");

            // the reverse of a constructor
            height = _height;
            width = _width;
        }
    }
}
