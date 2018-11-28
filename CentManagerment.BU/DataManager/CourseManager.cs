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
        public readonly ConvertDataCourse convertData = new ConvertDataCourse();
        CentManagermentEntities db = null;
        public bool CourseManagerInsert(CourseDTO course)
        {
            try
            {
                return new CourseDAO().Insert(convertData.ConvertDataCourseToEF(course));
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
                return new CourseDAO().Update(convertData.ConvertDataCourseToEF(course));
            }
            catch (Exception)
            {

                return false;
            }
        }
        public bool CourseManagerDelete(int courseId)
        {
            try
            {
                return new CourseDAO().Delete(courseId);
            }
            catch (Exception)
            {

                return false;
            }
        }
        /// <summary>
        /// get all list course 
        /// </summary>
        /// <returns></returns>
        public List<CourseDTO> GetListCourse()
        {
            using (db = new CentManagermentEntities())
            {
                var listCourse = db.Course.ToList();
                List<CourseDTO> listDto = new List<CourseDTO>();
                foreach (var item in listCourse)
                {
                    listDto.Add(convertData.ConvertDataCourseToDTO(item));

                }
                return listDto;
            }
        }
        /// <summary>
        /// lay ra khoa hoc theo id
        /// </summary>
        /// <param name="courseId"></param>
        /// <returns></returns>
        public CourseDTO GetCourseById(int courseId)
        {
            using (db = new CentManagermentEntities())
            {
                return convertData.ConvertDataCourseToDTO(db.Course.SingleOrDefault(x => x.CourseId == courseId));
            }
        }

    }
}
