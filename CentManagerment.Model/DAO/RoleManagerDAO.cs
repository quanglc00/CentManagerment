using CentManagerment.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CentManagerment.Model.DAO
{
    public class RoleManagerDAO
    {
        CentManagermentEntities db = null;
        // use using to open and close connection
        public bool Insert(RoleManager roleManager)
        {
            using (db = new CentManagermentEntities())
            {
                db.RoleManager.Add(roleManager);
                db.SaveChanges();
            }
            return true;


        }
        // use using to open and close connection
        public bool Update(RoleManager roleManager)
        {
            using (db = new CentManagermentEntities())
            {
                var roleManagerUpdate = db.RoleManager.FirstOrDefault(x => x.RoleManagerId == roleManager.RoleManagerId);
                roleManagerUpdate.RoleManagerRoleId = roleManager.RoleManagerRoleId;
                roleManagerUpdate.RoleManagerUserId = roleManager.RoleManagerUserId;
                db.SaveChanges();
            }
            return true;

        }

        // use using to open and close connection
        public bool Delete(RoleManager roleManager)
        {
            using (db = new CentManagermentEntities())
            {
                db.RoleManager.Remove(db.RoleManager.Find(roleManager.RoleManagerId));
                db.SaveChanges();
            }
            return true;

        }
    }
}
