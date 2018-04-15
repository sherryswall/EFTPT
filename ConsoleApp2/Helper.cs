using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp2
{
    public class Helper
    {
        public void AddChildOne()

        {
            AddChild(new ChildOne() { childPropOne = "child one property", comments = "sherry adding cost", texting = "hey hey" });
        }

        public void AddChildTwo()
        {
            AddChild(new childTwo() { Cost = 10, comments = "sherry adding cost for child two", texting = "texting 2" });
        }
        public void ReadChildrenTwo()
        {

            Console.WriteLine(ReadChildren<childTwo>().FirstOrDefault().comments);
        }

        public void AddChild<T>(T rr) where T : Parent
        {
            using (var context = new MovieDBEntities())
            {
                context.Parents.Add(rr);
                try
                {
                    context.SaveChanges();

                }
                catch (Exception ex)
                {

                    throw ex;
                }

            }
        }

        public List<T> ReadChildren<T>() where T : Parent
        {
            List<T> tts = new List<T>();
            using (var context = new MovieDBEntities())
            {
                tts = context.Parents.OfType<T>().ToList();
            }
            return tts;
        }


    }
}
