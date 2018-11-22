using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CentManagerment.BU.DTO
{
    public class TeacherDTO
    {
        public int TeacherId { get; set; }
        public string TeacherName { get; set; }
        public Nullable<int> Age { get; set; }
        public Nullable<int> TimeToWork { get; set; }
        public Nullable<int> PricePerHour { get; set; }
        public string LevelEducation { get; set; }
    }
}
