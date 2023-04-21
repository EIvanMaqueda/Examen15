using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace SL
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "ICRUD" in both code and config file together.
    [ServiceContract]
    public interface ICRUD
    {
        [OperationContract]
        Proyecto_ENT.Result Add(Proyecto_ENT.Producto producto);

        [OperationContract]
        [ServiceKnownType(typeof(Proyecto_ENT.Producto))]
        Proyecto_ENT.Result GetAll();
    }
}
