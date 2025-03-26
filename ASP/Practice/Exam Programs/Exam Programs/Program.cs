using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Exam_Programs
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Enter num:");
            int num = Convert.ToInt32(Console.ReadLine());
            int n1 = 0, n2 = 1, n3;
            int start = 1;
            Console.WriteLine(n1);
            Console.WriteLine(n2);
            while (start < num)
            {
                n3 = n1 + n2;
                Console.WriteLine(n3);
                n1 = n2;
                n2 = n3;
                start++;
            }
            Console.ReadLine();
        }
    }
}
