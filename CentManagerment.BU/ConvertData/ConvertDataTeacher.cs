using CentManagerment.BU.DTO;
using CentManagerment.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CentManagerment.BU.ConvertData
{
    public class ConvertDataTeacher
    {
        /// <summary>
        /// chuyển đổi dữ liệu bảng giáo viên từ EF sang DTO
        /// </summary>
        /// <param name="cl"></param>
        /// <returns></returns>
        public TeacherDTO ConvertDataTeacherToDTO(Teacher cl)
        {
            var TeacherDTO = new TeacherDTO()
            {
                Age = cl.Age,
                LevelEducation = cl.LevelEducation,
                PricePerHour = cl.PricePerHour,
                TeacherName = cl.TeacherName,
                TimeToWork = cl.TimeToWork,
                TeacherId = cl.TeacherId
            };
            return TeacherDTO;
        }
        /// <summary>
        /// Chuyển đổi dữ liệu bảng giao viên từ DTO sang EF
        /// </summary>
        /// <param name="TeacherDTO"></param>
        /// <returns></returns>
        public Teacher ConvertDataTeacherToEF(TeacherDTO TeacherDTO)
        {
            var TeacherEF = new Teacher()
            {
                Age = TeacherDTO.Age,
                LevelEducation = TeacherDTO.LevelEducation,
                PricePerHour = TeacherDTO.PricePerHour,
                TeacherName = TeacherDTO.TeacherName,
                TimeToWork = TeacherDTO.TimeToWork,
            };
            if (TeacherDTO.TeacherId > 0)
            {
                TeacherEF.TeacherId = TeacherDTO.TeacherId;
            }
            return TeacherEF;
        }
    }
}
