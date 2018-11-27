﻿using CentManagerment.BU.DTO;
using CentManagerment.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CentManagerment.BU.ConvertData
{
    public class ConvertDataStudent
    {
        public StudentDTO ConvertDataStudentToDTO(Student student)
        {
            var studentDTO = new StudentDTO()
            {
                StudentId = student.StudentId,
                StudentClassID = student.StudentClassID,
                StudentMark = student.StudentMark,
                StudentName = student.StudentName,
                StudentSchoolFee = student.StudentSchoolFee,
                StudentAdress = student.StudentAdress,
                StudentEmail = student.StudentEmail,
                StudentPhone = student.StudentPhone
            };
            if (student.StudentClassID != null)
                studentDTO.ClassDTO = new ConvertDataClass().ConvertDataClassToDTO(student.Class);
            return studentDTO;
        }
        public Student ConvertDataStudentToEF(StudentDTO studentDTO)
        {
            var student = new Student()
            {
                StudentClassID = studentDTO.StudentClassID,
                StudentMark = studentDTO.StudentMark,
                StudentName = studentDTO.StudentName,
                StudentAdress = studentDTO.StudentAdress,
                StudentEmail = studentDTO.StudentEmail,
                StudentPhone = studentDTO.StudentPhone,
                StudentSchoolFee = studentDTO.StudentSchoolFee
            };
            if(studentDTO.StudentId > 0)
            {
                student.StudentId = studentDTO.StudentId;
            }
            return student;
        }
    }
}
