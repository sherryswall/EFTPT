using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp2
{
    class Program
    {
        static void Main(string[] args)
        {
            Helper h = new Helper();
            h.AddChildOne();
            h.AddChildTwo();

            h.ReadChildrenTwo();

        }
    }
}
