using CentManagerment.BU.DataManager;
using CentManagerment.BU.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CentManagerment.Areas.Admin.Controllers
{
    public class CourseManagermentController : Controller
    {
        public readonly CourseManager courseManager = new CourseManager();
        // GET: Admin/CourseManagerment
        /// <summary>
        /// Get all list course
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            var model = courseManager.GetListCourse();
            return View(model);
        }
        /// <summary>
        /// man hinh them khoa hoc
        /// </summary>
        /// <returns></returns>
        public ActionResult InsertView()
        {
            return View();
        }
        /// <summary>
        /// them khoa hoc
        /// </summary>
        /// <param name="classDto"></param>
        /// <returns></returns>
        public ActionResult Insert(CourseDTO courseDto)
        {
            var model = courseManager.CourseManagerInsert(courseDto);
            return RedirectToAction("Index");
        }
        /// <summary>
        /// xoa khoa hoc
        /// </summary>
        /// <param name="courseId"></param>
        /// <returns></returns>
        public JsonResult Delete(int courseId)
        {
            var deleteManager = courseManager.CourseManagerDelete(courseId);
            return Json(deleteManager, behavior: JsonRequestBehavior.AllowGet);
        }
    }
}