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
    public class CourseManager
    {
        CentManagermentEntities db = null;
        public bool CourseManagerInsert(CourseDTO course)
        {
            try
            {
                return new CourseDAO().Insert(new ConvertDataCourse().ConvertDataCourseToEF(course));
            }
            catch (Exception)
            {
                
                return false;
            }
        }
        public bool CourseManagerUpdate(CourseDTO course)
        {
            try
            {
                return new CourseDAO().Update(new ConvertDataCourse().ConvertDataCourseToEF(course));
            }
            catch (Exception)
            {

                return false;
            }
        }
        public bool CourseManagerDelete(CourseDTO course)
        {
            try
            {
                return new CourseDAO().Delete(new ConvertDataCourse().ConvertDataCourseToEF(course));
            }
            catch (Exception)
            {

                return false;
            }
        }
    }
}
