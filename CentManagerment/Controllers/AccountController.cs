using CentManagerment.BU.DataManager;
using CentManagerment.BU.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CentManagerment.Controllers
{
    public class AccountController : Controller
    {
        // GET: Account
        public ActionResult Index()
        {
            ViewData["ListAccount"] = new UserManagerManager().GetListAccount();
            return View();
        }
        public JsonResult UpdateAccount(UserManagerDTO user)
        {
            var resultCode = 0;
            var result = new UserManagerManager().UserManagerManagerUpdate(user);
            var listAccount = new List<UserManagerDTO>();
            if (result)
            {
                resultCode = 1;
                var list = new UserManagerManager().GetListAccount();
                foreach (var item in list)
                {
                    listAccount.Add(item);
                }
            }
            return Json(new { resultCode,listAccount },JsonRequestBehavior.AllowGet);
        }
    }
}