﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CentManagerment.Areas.Admin.Controllers
{
    public class StudentManagermentController : BaseController
    {
        // GET: Admin/StudentManagerment
        public ActionResult Index()
        {
            return View();
        }
    }
}