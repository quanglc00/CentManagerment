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
    public class TeacherManager
    {
        CentManagermentEntities db = null;
        public bool TeacherManagerInsert(TeacherDTO Teacher)
        {
            try
            {
                return new TeacherDAO().Insert(new ConvertDataTeacher().ConvertDataTeacherToEF(Teacher));
            }
            catch (Exception)
            {

                return false;
            }
        }
        public bool TeacherManagerUpdate(TeacherDTO Teacher)
        {
            try
            {
                return new TeacherDAO().Update(new ConvertDataTeacher().ConvertDataTeacherToEF(Teacher));
            }
            catch (Exception)
            {

                return false;
            }
        }
        public bool TeacherManagerDelete(TeacherDTO Teacher)
        {
            try
            {
                return new TeacherDAO().Delete(new ConvertDataTeacher().ConvertDataTeacherToEF(Teacher));
            }
            catch (Exception)
            {

                return false;
            }
        }
    }
}
