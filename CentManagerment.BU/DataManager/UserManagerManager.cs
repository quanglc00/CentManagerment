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
                new UserManagerDAO().Insert(new ConvertDataUserManager().ConvertDataUserManagerToEF(UserManager));
                var listRole = db.Role.ToList();
                var userId = db.UserManager.OrderByDescending(p => p.UserId).FirstOrDefault().UserId;
                if (UserManager.UserType == 1)
                {
                    foreach (var item in listRole)
                    {
                        new RoleManagerDAO().Insert(new ConvertDataRoleManager().ConvertDataRoleManagerToEF(
                            new RoleManagerDTO { RoleManagerUserId = userId, RoleManagerRoleId = item.RoleId }));
                    }
                }
                else
                {
                    new RoleManagerDAO().Insert(new ConvertDataRoleManager().ConvertDataRoleManagerToEF(
                        new RoleManagerDTO { RoleManagerUserId = userId, RoleManagerRoleId = 1 }));
                }
                return true;
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
                new UserManagerDAO().Update(new ConvertDataUserManager().ConvertDataUserManagerToEF(UserManager));
                var listRole = db.Role.ToList();
                if (UserManager.UserType == 1)
                {
                    var listRoleManagerByUserId = new RoleManagerManager().GetListRoleManagerByUserID(UserManager);
                    foreach (var item in listRoleManagerByUserId)
                    {
                        new RoleManagerManager().RoleManagerManagerDelete(item);
                    }
                    foreach (var item in listRole)
                    {
                        new RoleManagerDAO().Insert(new ConvertDataRoleManager().ConvertDataRoleManagerToEF(
                            new RoleManagerDTO { RoleManagerUserId = UserManager.UserId, RoleManagerRoleId = item.RoleId }));
                    }
                }
                else
                {
                    var listRoleManagerByUserId = new RoleManagerManager().GetListRoleManagerByUserID(UserManager);
                    foreach (var item in listRoleManagerByUserId)
                    {
                        new RoleManagerManager().RoleManagerManagerDelete(item);
                    }
                    new RoleManagerDAO().Insert(new ConvertDataRoleManager().ConvertDataRoleManagerToEF(
                        new RoleManagerDTO { RoleManagerUserId = UserManager.UserId, RoleManagerRoleId = 1 }));
                }
                return true;
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
                new UserManagerDAO().Delete(new ConvertDataUserManager().ConvertDataUserManagerToEF(UserManager));
                var listRoleManagerByUserId = new RoleManagerManager().GetListRoleManagerByUserID(UserManager);
                foreach (var item in listRoleManagerByUserId)
                {
                    new RoleManagerManager().RoleManagerManagerDelete(item);
                }
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }
        public List<UserManagerDTO> GetListUserManagers()
        {
            var list = db.UserManager.ToList();
            var listDTO = new List<UserManagerDTO>();
            foreach (var item in list)
            {
                listDTO.Add(new ConvertDataUserManager().ConvertDataUserManagerToDTO(item));
            }
            return listDTO;
        }
    }
}
