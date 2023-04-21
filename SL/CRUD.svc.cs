using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace SL
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "CRUD" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select CRUD.svc or CRUD.svc.cs at the Solution Explorer and start debugging.
    public class CRUD : ICRUD
    {
        public Proyecto_ENT.Result Add(Proyecto_ENT.Producto producto)
        {
            Proyecto_ENT.Result result = Proyecto_BLL.Producto.Add(producto);
            if (result.Correct)
            {
                return result;
            }
            else
            {
                return null;
            }


        }

        public Proyecto_ENT.Result GetAll() { 
        
            Proyecto_ENT.Result result=Proyecto_BLL.Producto.GetAll();
            if (result.Correct)
            {
                return result;
            }
            else
            {
                return null;
            }
            
        }
    }
}
