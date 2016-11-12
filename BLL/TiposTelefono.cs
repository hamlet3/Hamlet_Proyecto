using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
   public class TiposTelefono : ClaseMaestra
    {
        public int TipoTelefonoId { get; set; }
        public string Descripcion { get; set; }

        public TiposTelefono() { }

        public override bool Buscar(int IdBuscado)
        {
            throw new NotImplementedException();
        }

        public override bool Editar()
        {
            throw new NotImplementedException();
        }

        public override bool Eliminar()
        {
            throw new NotImplementedException();
        }

        public override bool Insertar()
        {
            throw new NotImplementedException();
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb conexion = new ConexionDb();
            string ordenar = "";
            if (!Orden.Equals(""))
                ordenar = " Order By " + Orden;

            return conexion.ObtenerDatos(String.Format("Select "+Campos+" From TiPosTelefono where "+Condicion+ordenar));
        }
    }
}
