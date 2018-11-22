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
    public class RevenueManager
    {
        CentManagermentEntities db = null;
        public RevenueManager()
        {
            db = new CentManagermentEntities();
        }
        public bool RevenueManagerInsert(RevenueDTO revenue)
        {
            try
            {
                return new RevenueDAO().Insert(new ConvertDataRevenue().ConvertDataRevenueToEF(revenue));
            }
            catch (Exception)
            {
                
                return false;
            }
        }
        public bool RevenueManagerUpdate(RevenueDTO revenue)
        {
            try
            {
                return new RevenueDAO().Update(new ConvertDataRevenue().ConvertDataRevenueToEF(revenue));
            }
            catch (Exception)
            {

                return false;
            }
        }
        public bool RevenueManagerDelete(RevenueDTO revenue)
        {
            try
            {
                return new RevenueDAO().Delete(new ConvertDataRevenue().ConvertDataRevenueToEF(revenue));
            }
            catch (Exception)
            {

                return false;
            }
        }
    }
}
