using CentManagerment.BU.DataManager;
using CentManagerment.BU.DTO;
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

        // GET: Admin/News
        public ActionResult Index(string searchString, int page = 1, int pageSize = 3)
        {
            var model = newManager.GetListNews(searchString, page, pageSize);
            ViewBag.searchString = searchString;
            return View(model);
        }
        public ActionResult AddMews()
        {
            return View();
        }
        public JsonResult DeleteNew(int idnew)
        {
            var resultCode = 0;
            var resultDelete = newManager.NewsManagerDelete(idnew);
            if (resultDelete)
                resultCode = 1;
            return Json(resultCode, JsonRequestBehavior.AllowGet);
        }

        [ValidateInput(false)]
        public JsonResult AddNews(NewsDTO newdto)
        {
            var resultCode = 0;
            if (string.IsNullOrEmpty(newdto.NewsContent) || string.IsNullOrEmpty(newdto.NewsShortContent) || string.IsNullOrEmpty(newdto.NewsTitle))
            {
                //Hãy nhập đủ thông tin yêu cầu
                resultCode = 2;
            }
            else
            {
                newdto.NewsPostDate = DateTime.Now;
                var resultUpdate = newManager.NewsManagerInsert(newdto);
                if (resultUpdate)
                    resultCode = 1;
            }

            return Json(resultCode, JsonRequestBehavior.AllowGet);
        }
        //public ActionResult SuaBaiVietTinTuc(int idNews)
        //{
        //    var getTT = new BangTinManager().GetTinTucById(idNews);
        //    return View(getTT);
        //}
    }
}