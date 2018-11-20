using CentManagerment.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CentManagerment.Model.DAO
{
    public class StudentDAO
    {
        CentManagermentEntities db = null;

        // use using to open and close connection

        public bool Insert(Student student)
        {
            using (db = new CentManagermentEntities())
            {
                db.Student.Add(student);
                db.SaveChanges();
                return true;
            }

        }
        // use using to open and close connection

        public bool Update(Student student)
        {
            using (db = new CentManagermentEntities())
            {
                var studentUpdate = db.Student.FirstOrDefault(x => x.StudentId == student.StudentId);
                studentUpdate.StudentClassID = student.StudentClassID;
                studentUpdate.StudentMark = student.StudentMark;
                studentUpdate.StudentName = student.StudentName;
                db.SaveChanges();
                return true;
            }

        }
        // use using to open and close connection

        public bool Delete(Student student)
        {
            using (db = new CentManagermentEntities())
            {
                db.Student.Remove(student);
                db.SaveChanges();
                return true;
            }

        }
    }
}
