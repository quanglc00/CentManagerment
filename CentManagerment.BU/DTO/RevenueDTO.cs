using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CentManagerment.BU.DTO
{
    public class RevenueDTO
    {
        public int RevenueId { get; set; }
        public Nullable<System.DateTime> RevenueStartPaymentDay { get; set; }
        public Nullable<int> RevenuePrice { get; set; }
        public Nullable<int> RevenueStudentId { get; set; }

        public virtual StudentDTO StudentDTO { get; set; }
    }
}
