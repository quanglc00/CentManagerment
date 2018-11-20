using CentManagerment.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CentManagerment.Model.DAO
{
    public class UserManagerDAO
    {

        CentManagermentEntities db = null;
        // use using to open and close connection

        public bool Insert(UserManager userManager)
        {
            using (db = new CentManagermentEntities())
            {
                db.UserManager.Add(userManager);
                db.SaveChanges();
            }
            return true;


        }
        // use using to open and close connection

        public bool Update(UserManager userManager)
        {
            using (db = new CentManagermentEntities())
            {
                var userManagerUpdate = db.UserManager.FirstOrDefault(x => x.UserId == userManager.UserId);
                userManagerUpdate.UserName = userManager.UserName;
                userManagerUpdate.UserPassword = userManager.UserPassword;
                userManagerUpdate.UserType = userManager.UserType;
                userManagerUpdate.UserEmail = userManager.UserEmail;
                userManagerUpdate.UserPhone = userManager.UserPhone;
                userManagerUpdate.UserCreateDate = userManager.UserCreateDate;
                userManagerUpdate.UserStatus = userManager.UserStatus;
                db.SaveChanges();
            }
            return true;

        }
        // use using to open and close connection

        public bool Delete(UserManager userManager)
        {
            using (db = new CentManagermentEntities())
            {
                db.UserManager.Remove(userManager);
                db.SaveChanges();
            }
            return true;


        }
    }
}
