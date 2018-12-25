﻿using CentManagerment.Areas.Admin.Common;
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
    [Role(RoleID = (int)CommonEnum.Role.Quanlynhanvien)]
    public class EmployeeController : BaseController
    {
        // GET: Employee
        public ActionResult Index()
        {
                ViewBag.ListUser = new UserManagerManager().GetListUserManagers();
                return View();
        }
        public ActionResult InsertEmployee()
        {
            return View();
        }
        public ActionResult DecentralizationEmployee()
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
            return Json(resultCode, JsonRequestBehavior.AllowGet);
        }
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
        public JsonResult DeleteUser(UserManagerDTO userManager)
        {
            bool resultCode = false;
            if (new UserManagerManager().UserManagerManagerDelete(userManager))
                resultCode = true;
            return Json(resultCode, JsonRequestBehavior.AllowGet);
        }
    }
}