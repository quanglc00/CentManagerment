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
    public class ClassManager
    {
        CentManagermentEntities db = null;
        public ClassManager()
        {
            db = new CentManagermentEntities();
        }
        public bool ClassManagerInsert(ClassDTO Class)
        {
            try
            {
                return new ClassDAO().Insert(new ConvertDataClass().ConvertDataClassToEF(Class));
            }
            catch (Exception)
            {
                
                return false;
            }
        }
        public bool ClassManagerUpdate(ClassDTO Class)
        {
            try
            {
                return new ClassDAO().Update(new ConvertDataClass().ConvertDataClassToEF(Class));
            }
            catch (Exception)
            {

                return false;
            }
        }
        public bool ClassManagerDelete(ClassDTO Class)
        {
            try
            {
                return new ClassDAO().Delete(new ConvertDataClass().ConvertDataClassToEF(Class));
            }
            catch (Exception)
            {

                return false;
            }
        }
    }
}
