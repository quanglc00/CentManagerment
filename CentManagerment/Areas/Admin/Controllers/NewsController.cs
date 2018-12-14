using CentManagerment.BU.DataManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CentManagerment.Areas.Admin.Controllers
{
    public class NewsController : Controller
    {
        public static readonly NewsManager newManager = new NewsManager();
        public readonly SelectList CourseName = new SelectList(newManager.GetListNews(), "NewsId");

        // GET: Admin/News
        public ActionResult Index(string searchString, int page = 1, int pageSize = 3)
        {
            var model = newManager.GetListNews(searchString, page, pageSize);
            ViewBag.searchString = searchString;
            return View(model);
        }
        public ActionResult ThemBaiVietTinTuc()
        {
            return View();
        }
        //public ActionResult SuaBaiVietTinTuc(int idNews)
        //{
        //    var getTT = new BangTinManager().GetTinTucById(idNews);
        //    return View(getTT);
        //}
    }
}