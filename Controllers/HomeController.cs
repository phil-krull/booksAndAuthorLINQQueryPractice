using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;
using Test_Project.Models;
using System.Linq;
using Microsoft.EntityFrameworkCore;


namespace Test_Project.Controllers
{
    public class HomeController : Controller
    {
        private Context _context;
        public HomeController(Context context)
        {
            _context = context;
        }
        // GET: /Home/
        [HttpGet]
        [Route("")]
        public IActionResult Index()
        {
            ViewModel IndexView = new ViewModel();

            IndexView.Allauthors = _context.Authors.ToList();
            IndexView.Allbooks = _context.Books.ToList();
            IndexView.Allpublishers = _context.Publishers.ToList();

            return View(IndexView);
        }
    }
}
