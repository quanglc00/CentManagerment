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
    public class RoleManagerManager
    {
        CentManagermentEntities db = null;
        public RoleManagerManager()
        {
            db = new CentManagermentEntities();
        }
        public bool RoleManagerManagerInsert(RoleManagerDTO RoleManager)
        {
            try
            {
                return new RoleManagerDAO().Insert(new ConvertDataRoleManager().ConvertDataRoleManagerToEF(RoleManager));
            }
            catch (Exception)
            {
                
                return false;
            }
        }
        public bool RoleManagerManagerUpdate(RoleManagerDTO RoleManager)
        {
            try
            {
                return new RoleManagerDAO().Update(new ConvertDataRoleManager().ConvertDataRoleManagerToEF(RoleManager));
            }
            catch (Exception)
            {

                return false;
            }
        }
        public bool RoleManagerManagerDelete(RoleManagerDTO RoleManager)
        {
            try
            {
                return new RoleManagerDAO().Delete(new ConvertDataRoleManager().ConvertDataRoleManagerToEF(RoleManager));
            }
            catch (Exception)
            {

                return false;
            }
        }
    }
}
