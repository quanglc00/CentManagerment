using CentManagerment.BU.ConvertData;
using CentManagerment.BU.DTO;
using CentManagerment.Model.DAO;
using CentManagerment.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CentManagerment.BU.DataManager
{
    public class StudentManager
    {
        CentManagermentEntities db = null;
        public StudentManager()
        {
            db = new CentManagermentEntities();
        }
        public bool StudentManagerInsert(StudentDTO Student)
        {
            try
            {
                return new StudentDAO().Insert(new ConvertDataStudent().ConvertDataStudentToEF(Student));
            }
            catch (Exception)
            {
                
                return false;
            }
        }
        public bool StudentManagerUpdate(StudentDTO Student)
        {
            try
            {
                return new StudentDAO().Update(new ConvertDataStudent().ConvertDataStudentToEF(Student));
            }
            catch (Exception)
            {

                return false;
            }
        }
        public bool StudentManagerDelete(StudentDTO Student)
        {
            try
            {
                return new StudentDAO().Delete(new ConvertDataStudent().ConvertDataStudentToEF(Student));
            }
            catch (Exception)
            {

                return false;
            }
        }
    }
}
