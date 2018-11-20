using CentManagerment.BU.DTO;
using CentManagerment.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CentManagerment.BU.ConvertData
{
    public class ConvertDataRevenue
    {
        public RevenueDTO ConvertDataRevenueToDTO(Revenue revenue)
        {
            var revenueDTO = new RevenueDTO()
            {
                RevenueId = revenue.RevenueId,
                RevenuePrice = revenue.RevenuePrice,
                RevenueStartPaymentDay = revenue.RevenueStartPaymentDay,
                RevenueStudentId = revenue.RevenueStudentId,
                StudentDTO = new ConvertDataStudent().ConvertDataStudentToDTO(revenue.Student)
            };
            return revenueDTO;
        }
        public Revenue ConvertDataRevenueToEF(RevenueDTO revenueDTO)
        {
            var revenueEF = new Revenue()
            {
                RevenuePrice = revenueDTO.RevenuePrice,
                RevenueStartPaymentDay = revenueDTO.RevenueStartPaymentDay,
                RevenueStudentId = revenueDTO.RevenueStudentId
            };
            if(revenueDTO.RevenueId > 0)
            {
                revenueEF.RevenueId = revenueDTO.RevenueId;
            }
            return revenueEF;
        }
    }
}
