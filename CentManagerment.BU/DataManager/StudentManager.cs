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


        public bool StudentManagerDeleteById(int idStudent)
        {
            try
            {
                return new StudentDAO().DeleteById(idStudent);
            }
            catch (Exception)
            {

                return false;
            }
        }



        #region Đạt
        public Student GetInfoStudent(int id)
        {
            var st = new Student();
            using (var db = new CentManagermentEntities())
            {
                st = db.Student.Find(id);
            }
            return st;
        }


        public List<StudentDTO> GetListStudents()
        {
            var listStudents = new List<Student>();
            using (var db = new CentManagermentEntities())
            {
                listStudents = db.Student.ToList();
            }
            var listStudentsDTO = new List<StudentDTO>();
            foreach (var st in listStudents)
            {
                listStudentsDTO.Add(new ConvertDataStudent().ConvertDataStudentToDTO(st));
            }
            return listStudentsDTO;
        }

        #endregion
    }
}
