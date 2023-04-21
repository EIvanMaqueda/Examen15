using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proyecto_BLL
{
    public class Producto
    {
        public static Proyecto_ENT.Result GetAll() { 
        
            Proyecto_ENT.Result result= new Proyecto_ENT.Result();
            try
            {
                using (Proyecto_DAL.EmaquedaeExamen15Entities context =new Proyecto_DAL.EmaquedaeExamen15Entities())
                {
                    var query = context.sp_GetAllCatalogoProd().ToList(); 
                    if (query!=null)
                    {
                        result.Objects = new List<object>();
                        foreach (var obj in query)
                        {
                            Proyecto_ENT.Producto producto = new Proyecto_ENT.Producto();
                            producto.IdProducto = obj.IdProducto;
                            producto.FechaCreacion = obj.FechaCreacion.Value;
                            producto.Descripcion = obj.Descripción;
                            producto.IdUsuario = obj.IdUsuario.Value;
                            result.Objects.Add(producto);
                        }
                        result.Correct = true;
                    }
                }
            }
            catch (Exception ex)
            {

                result.Correct=false;
                result.Message= ex.Message;
            }
            return result;
        }

        public static Proyecto_ENT.Result Add(Proyecto_ENT.Producto producto) { 
        
            Proyecto_ENT.Result result=new Proyecto_ENT.Result();
            try
            {
                using (Proyecto_DAL.EmaquedaeExamen15Entities context=new Proyecto_DAL.EmaquedaeExamen15Entities())
                {
                    int query = context.sp_InsCatalogoProd(producto.Descripcion);
                    if (query > 0)
                    {

                        result.Correct=true;
                        result.Message = "Usuario Agregado Correctamente";
                    }
                }
            }
            catch (Exception ex)
            {

                result.Correct=false;
                result.Message= ex.Message;
            }
            
            return result;
        }
    }
}
