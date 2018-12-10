using CentManagerment.BU.DataManager;
using CentManagerment.BU.DTO;
using CentManagerment.BU.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CentManagerment.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        // GET: Admin/Login
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(LoginModelDTO user)
        {
            if (ModelState.IsValid)
            {
                var userLogin = new UserManagerManager().LoginUserByLoginModel(user);
                if (userLogin != null)
                {
                    //Session[CommonUserLogin.USER_SESSION] = userSesstion;
                    Session.Add(CommonUserLogin.USER_SESSION, userLogin);
                    var listRole = new RoleManagerManager().GetListRoleIdByUserName(user.UserName);
                    Session.Add(CommonUserLogin.USER_LISTROLE, listRole);
                    return RedirectToAction("Index", "Admin/HomeAdmin");
                }
                else
                {
                    ModelState.AddModelError("", "Sai tên tài khoản hoặc mật khẩu!");
                    return View();
                }
            }
            else
            {
                return Redirect("/Admin/Login");
            }
        }
    }
}