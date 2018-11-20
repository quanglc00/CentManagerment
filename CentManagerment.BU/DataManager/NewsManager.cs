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
    public class NewsManager
    {
        CentManagermentEntities db = null;
        public NewsManager()
        {
            db = new CentManagermentEntities();
        }
        public bool NewsManagerInsert(NewsDTO course)
        {
            try
            {
                return new NewsDAO().Insert(new ConvertDataNews().ConvertDataNewsToEF(course));
            }
            catch (Exception)
            {
                
                return false;
            }
        }
        public bool NewsManagerUpdate(NewsDTO course)
        {
            try
            {
                return new NewsDAO().Update(new ConvertDataNews().ConvertDataNewsToEF(course));
            }
            catch (Exception)
            {

                return false;
            }
        }
        public bool NewsManagerDelete(NewsDTO course)
        {
            try
            {
                return new NewsDAO().Delete(new ConvertDataNews().ConvertDataNewsToEF(course));
            }
            catch (Exception)
            {

                return false;
            }
        }
    }
}
