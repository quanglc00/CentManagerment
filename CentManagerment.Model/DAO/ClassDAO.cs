using CentManagerment.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CentManagerment.Model.DAO
{
    public class ClassDAO
    {
        CentManagermentEntities db = null;
        // use using to open and close connection
        public bool Insert(Class cl)
        {
            using ( db = new CentManagermentEntities())
            {
                db.Class.Add(cl);
                db.SaveChanges();
            }
            return true;

        }
        // use using to open and close connection
        public bool Update(Class cl)
        {
            using (db = new CentManagermentEntities())
            {
                var clUpdate = db.Class.FirstOrDefault(x => x.ClassId == cl.ClassId);
                clUpdate.ClassName = cl.ClassName;
                clUpdate.ClassAmountStudent = cl.ClassAmountStudent;
                clUpdate.ClassCourseId = cl.ClassCourseId;
                db.SaveChanges();
            }
            return true;


        }
        // use using to open and close connection
        public bool Delete(int cl)
        {
            using (db = new CentManagermentEntities())
            {
                var delete = db.Class.Find(cl);
                db.Class.Remove(delete);
                db.SaveChanges();
            }
            return true;

        }
    }
}
