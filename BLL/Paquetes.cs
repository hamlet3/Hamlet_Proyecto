using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace BLL
{
    public class Paquetes : ClaseMaestra
    {
        public int PaqueteId { get; set; }
        public string Descripcion { get; set; }
        public int Costo { get; set; }
        public int Espacios { get; set; }

        ConexionDb conexion = new ConexionDb();

        public Paquetes() { }


        public override bool Insertar()
        {
            bool retornar = false;
            try
            {
                retornar = conexion.Ejecutar(String.Format("Insert into Paquetes(Descripcion, Costo, Espacios) Values('{0}', {1}, {2})", this.Descripcion, this.Costo, this.Espacios));
                 
            }
            catch (Exception ex) { throw ex; }
            return retornar;
        }

        public override bool Editar()
        {
            bool retornar = true;
            try
            {
                retornar = conexion.Ejecutar(String.Format("Update Paquetes set Descripcion='{0}', Costo={1}, Espacios={2} where PaqueteId={3}", this.Descripcion, this.Costo, this.Espacios, this.PaqueteId));
                
            }
            catch (Exception ex) { throw ex; }
            return retornar;
        }

        public override bool Eliminar()
        {
            bool retornar = true;
            try
            {
                retornar = conexion.Ejecutar(String.Format("Delete from Paquetes where PaqueteId={0}", this.PaqueteId));
                
            }
            catch (Exception ex) { throw ex; }
            return retornar;
        }

        public override bool Buscar(int IdBuscado)
        {
            DataTable dt = new DataTable();

            dt = conexion.ObtenerDatos(String.Format("Select * from Paquetes where PaqueteId=" + IdBuscado));
            if (dt.Rows.Count > 0)
            {
                this.PaqueteId = (int)dt.Rows[0]["PaqueteId"];
                this.Descripcion = dt.Rows[0]["Descripcion"].ToString();
                this.Costo = (int)dt.Rows[0]["Costo"];
                this.Espacios = (int)dt.Rows[0]["Espacios"];
            }
            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            string ordenar = "";
            if (!Orden.Equals(""))
                ordenar = "Orden by " + Orden;
            return conexion.ObtenerDatos("Select " + Campos + " from Paquetes where " + Condicion + ordenar);
        }
    }
}
