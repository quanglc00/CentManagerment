using CentManagerment.BU.DataManager;
using CentManagerment.BU.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CentManagerment.Areas.Admin.Controllers
{
    public class EmployeeController : Controller
    {
        // GET: Employee
        public ActionResult Index()
        {
            ViewBag.ListUser = new UserManagerManager().GetListUserManagers();
            return View();
        }
        [HttpPost]
        public JsonResult UpdateUser(UserManagerDTO userManager)
        {
            bool resultCode = false;
            if (new UserManagerManager().UserManagerManagerUpdate(userManager))
                resultCode = true;
            return Json( resultCode , JsonRequestBehavior.AllowGet);
        }
        public ActionResult InsertEmployee()
        {
            return View();
        }
        public JsonResult AddUser(UserManagerDTO userManager)
        {
            bool resultCode = false;
            if (new UserManagerManager().UserManagerManagerInsert(userManager))
                resultCode = true;
            return Json(resultCode, JsonRequestBehavior.AllowGet);
        }
        public JsonResult DeleteUser(UserManagerDTO userManager)
        {
            bool resultCode = false;
            if (new UserManagerManager().UserManagerManagerDelete(userManager))
                resultCode = true;
            return Json(resultCode, JsonRequestBehavior.AllowGet);
        }
    }
}