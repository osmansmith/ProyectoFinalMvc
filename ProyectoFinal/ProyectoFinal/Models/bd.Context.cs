﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProyectoFinal.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class SICEntities : DbContext
    {
        public SICEntities()
            : base("name=SICEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<COMPAÑIA> COMPAÑIA { get; set; }
        public virtual DbSet<ENVIA_ENERGIA> ENVIA_ENERGIA { get; set; }
        public virtual DbSet<EOLICA> EOLICA { get; set; }
        public virtual DbSet<EST_PRIMARIA> EST_PRIMARIA { get; set; }
        public virtual DbSet<EST_PRODUCTOR> EST_PRODUCTOR { get; set; }
        public virtual DbSet<LINEA> LINEA { get; set; }
        public virtual DbSet<PRESA> PRESA { get; set; }
        public virtual DbSet<PRODUCTOR> PRODUCTOR { get; set; }
        public virtual DbSet<PROVINCIA> PROVINCIA { get; set; }
        public virtual DbSet<RED> RED { get; set; }
        public virtual DbSet<RED_COMPAÑIA> RED_COMPAÑIA { get; set; }
        public virtual DbSet<SOLAR> SOLAR { get; set; }
        public virtual DbSet<SUBEST_ZONA> SUBEST_ZONA { get; set; }
        public virtual DbSet<SUBESTACION> SUBESTACION { get; set; }
        public virtual DbSet<TERMICA> TERMICA { get; set; }
        public virtual DbSet<ZONA> ZONA { get; set; }
    }
}
