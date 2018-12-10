using CentManagerment.Areas.Admin.Common;
using CentManagerment.BU.Common;
using CentManagerment.BU.DataManager;
using CentManagerment.BU.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CentManagerment.Areas.Admin.Controllers
{
    public class EmployeeController : BaseController
    {
        // GET: Employee
        [Role(RoleID = (int)CommonEnum.Role.Quanlynhanvien)]
        public ActionResult Index()
        {
                ViewBag.ListUser = new UserManagerManager().GetListUserManagers();
                return View();
        }
        [Role(RoleID = (int)CommonEnum.Role.Quanlynhanvien)]
        public ActionResult InsertEmployee()
        {
            return View();
        }
        [Role(RoleID = (int)CommonEnum.Role.Quanlynhanvien)]
        public ActionResult DecentralizationEmployee()
        {
            ViewBag.ListUser = new UserManagerManager().GetListUserManagers();
            return View();
        }
        [Role(RoleID = (int)CommonEnum.Role.Quanlynhanvien)]
        [HttpPost]
        public JsonResult UpdateUser(UserManagerDTO userManager)
        {
            bool resultCode = false;
            if (new UserManagerManager().UserManagerManagerUpdate(userManager))
                resultCode = true;
            return Json(resultCode, JsonRequestBehavior.AllowGet);
        }
        [Role(RoleID = (int)CommonEnum.Role.Quanlynhanvien)]
        public JsonResult AddUser(UserManagerDTO userManager)
        {
            var list = new UserManagerManager().GetListUserManagers();
            int resultCode = 0;
            bool checkADD = true;
            foreach (var item in list)
            {
                if (userManager.UserName == item.UserName)
                {
                    resultCode = 2;
                    checkADD = false;
                    break;
                }
            }
            if (checkADD)
            {
                new UserManagerManager().UserManagerManagerInsert(userManager);
                resultCode = 1;
            }
            return Json(resultCode, JsonRequestBehavior.AllowGet);
        }
        [Role(RoleID = (int)CommonEnum.Role.Quanlynhanvien)]
        public JsonResult DeleteUser(UserManagerDTO userManager)
        {
            bool resultCode = false;
            if (new UserManagerManager().UserManagerManagerDelete(userManager))
                resultCode = true;
            return Json(resultCode, JsonRequestBehavior.AllowGet);
        }
    }
}