﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Proyecto_DAL
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class EmaquedaeExamen15Entities : DbContext
    {
        public EmaquedaeExamen15Entities()
            : base("name=EmaquedaeExamen15Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Empleado> Empleadoes { get; set; }
        public virtual DbSet<Exa_CatalogoProducto> Exa_CatalogoProducto { get; set; }
        public virtual DbSet<Departamento> Departamentoes { get; set; }
    
        public virtual ObjectResult<sp_GetAllCatalogoProd_Result> sp_GetAllCatalogoProd()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_GetAllCatalogoProd_Result>("sp_GetAllCatalogoProd");
        }
    
        public virtual int sp_InsCatalogoProd(string descripcion)
        {
            var descripcionParameter = descripcion != null ?
                new ObjectParameter("descripcion", descripcion) :
                new ObjectParameter("descripcion", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_InsCatalogoProd", descripcionParameter);
        }
    }
}
