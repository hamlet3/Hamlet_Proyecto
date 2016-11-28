using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
  public  class VentasPaquetes : ClaseMaestra
    {
        public int VentapaqueteId { get; set; }
        public int UsuarioId { get; set; }
        public int PaqueteId { get; set; }
        public int EspaciosRestante { get; set; }


        public override bool Insertar()
        {
            bool retornar = false;
            ConexionDb conexion = new ConexionDb();
            try
            {
               retornar= conexion.Ejecutar(string.Format("Insert into VentasPaquetes(UsuarioId, PaqueteId, EspaciosRestante)Values({0}, {1}, {2})", this.UsuarioId, this.PaqueteId, this.EspaciosRestante));
            }catch(Exception ex){ throw ex; }
            return retornar;
        }

        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retornar = false;
            try
            {
                retornar = conexion.Ejecutar(string.Format("Update VentasPaquetes set EspaciosRestante={0} where VentaPaqueteId={1}",this.EspaciosRestante, this.VentapaqueteId));
            }catch(Exception ex) { throw ex; }
            return retornar;
        }

        public override bool Eliminar()
        {
            throw new NotImplementedException();
        }

        public override bool Buscar(int IdBuscado)
        {
            throw new NotImplementedException();
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            string ordenar = "";
            ConexionDb conexion = new ConexionDb();
            if (!Orden.Equals(""))
                ordenar = "Order by " + Orden;

            return conexion.ObtenerDatos(string.Format("Select "+Campos+" from VentasPaquetes where "+Condicion+Orden));
        }
    }
}
