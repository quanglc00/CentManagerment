using CentManagerment.BU.DTO;
using CentManagerment.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CentManagerment.BU.ConvertData
{
    public class ConvertDataCourse
    {
        public CourseDTO ConvertDataCourseToDTO(Course course)
        {
            var courseDTO = new CourseDTO()
            {
                CourseId = course.CourseId,
                CourseName = course.CourseName,
                //CourseTime = course.CourseTime,
                //CousePrice = course.CousePrice
            };
            return courseDTO;
        }
        public Course ConvertDataCourseToEF(CourseDTO courseDTO)
        {
            var courseEF = new Course()
            {
                CourseName = courseDTO.CourseName,
                //CousePrice = courseDTO.CousePrice,
                //CourseTime = courseDTO.CourseTime,
            };
            if (courseDTO.CourseId > 0)
            {
                courseEF.CourseId = courseDTO.CourseId;
            }
            return courseEF;
        }
    }
}
