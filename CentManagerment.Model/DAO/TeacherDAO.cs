using CentManagerment.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CentManagerment.Model.DAO
{
    public class TeacherDAO
    {
        CentManagermentEntities db = null;

        // use using to open and close connection

        public bool Insert(Teacher Teacher)
        {
            using (db = new CentManagermentEntities())
            {
                db.Teacher.Add(Teacher);
                db.SaveChanges();
                return true;
            }

        }
        // use using to open and close connection

        public bool Update(Teacher teacher)
        {
            using (db = new CentManagermentEntities())
            {
                var teacherUpdate = db.Teacher.FirstOrDefault(x => x.TeacherId == teacher.TeacherId);
                teacherUpdate.TeacherName = teacher.TeacherName;
                teacherUpdate.TimeToWork = teacher.TimeToWork;
                teacherUpdate.PricePerHour = teacher.PricePerHour;
                teacherUpdate.LevelEducation = teacher.LevelEducation;
                db.SaveChanges();
                return true;
            }

        }
        // use using to open and close connection

        public bool Delete(Teacher teacher)
        {
            using (db = new CentManagermentEntities())
            {
                db.Teacher.Remove(teacher);
                db.SaveChanges();
                return true;
            }

        }
    }
}
