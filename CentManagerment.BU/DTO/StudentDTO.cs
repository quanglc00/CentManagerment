﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CentManagerment.BU.DTO
{
    public class StudentDTO
    {
        public int StudentId { get; set; }
        public string StudentName { get; set; }
        public int? StudentMark { get; set; }
        public int? StudentClassID { get; set; }

        public virtual ClassDTO ClassDTO { get; set; }
    }
}