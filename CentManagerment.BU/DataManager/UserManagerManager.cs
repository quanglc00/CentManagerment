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
    public class UserManagerManager
    {
        CentManagermentEntities db = null;
        public UserManagerManager()
        {
            db = new CentManagermentEntities();
        }
        public bool UserManagerManagerInsert(UserManagerDTO UserManager)
        {
            try
            {
                return new UserManagerDAO().Insert(new ConvertDataUserManager().ConvertDataUserManagerToEF(UserManager));
            }
            catch (Exception)
            {
                
                return false;
            }
        }
        public bool UserManagerManagerUpdate(UserManagerDTO UserManager)
        {
            try
            {
                return new UserManagerDAO().Update(new ConvertDataUserManager().ConvertDataUserManagerToEF(UserManager));
            }
            catch (Exception)
            {

                return false;
            }
        }
        public bool UserManagerManagerDelete(UserManagerDTO UserManager)
        {
            try
            {
                return new UserManagerDAO().Delete(new ConvertDataUserManager().ConvertDataUserManagerToEF(UserManager));
            }
            catch (Exception)
            {

                return false;
            }
        }
        public List<UserManagerDTO> GetListAccount()
        {
            var listAcount = db.UserManager.ToList();
            var listAccoutDTO = new List<UserManagerDTO>();
            foreach (var item in listAcount)
            {
                listAccoutDTO.Add(new ConvertDataUserManager().ConvertDataUserManagerToDTO(item));
            }
            return listAccoutDTO;
        }
    }
}
