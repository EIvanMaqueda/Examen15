using PL.CrudService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PL.Controllers
{
    public class IndexController : Controller
    {
        // GET: Index
        public ActionResult Index()
        {
            Proyecto_ENT.Producto producto=new Proyecto_ENT.Producto();
            CRUDClient op= new CrudService.CRUDClient();
            Proyecto_ENT.Result result=op.GetAll();
            producto.Productos = result.Objects;
            return View(producto);
        }

        [HttpGet]
        public ActionResult Form() {
            return View();
        
        }

        [HttpPost]
        public ActionResult Form(Proyecto_ENT.Producto producto)
        {
            Proyecto_ENT.Result result = Proyecto_BLL.Producto.Add(producto);
            return View();

        }
    }
}