using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace BLL
{
    public class Marcas : ClaseMaestra
    {
        public int MarcaId { get; set; }
        public string Descripcion { get; set; }

        ConexionDb conexion = new ConexionDb();

        public Marcas() { }


        public override bool Insertar()
        {
            bool retornar = false;
            try
            {
                conexion.Ejecutar(String.Format("Insert into Marcas(Descripcion) Values('{0}')", this.Descripcion));
                retornar = true;
            }
            catch (Exception ex) { throw ex; }
            return retornar;
        }

        public override bool Editar()
        {
            bool retornar = true;
            try
            {
                conexion.Ejecutar(String.Format("Update Marcas set Descripcion='{0}' where MarcaId={1}", this.Descripcion, this.MarcaId));
                retornar = true;
            }
            catch (Exception ex) { throw ex; }
            return retornar;
        }

        public override bool Eliminar()
        {
            bool retornar = true;
            try
            {
                conexion.Ejecutar(String.Format("Delete from Marcas where MarcaId={0}", this.MarcaId));
                retornar = true;
            }
            catch (Exception ex) { throw ex; }
            return retornar;
        }

        public override bool Buscar(int IdBuscado)
        {
            DataTable dt = new DataTable();

            dt = conexion.ObtenerDatos(String.Format("Select * from Marcas where MarcaId=" + IdBuscado));
            if (dt.Rows.Count > 0)
            {
                this.MarcaId = (int)dt.Rows[0]["MarcaId"];
                this.Descripcion = dt.Rows[0]["Descripcion"].ToString();
            }
            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            string ordenar = "";
            if (!Orden.Equals(""))
                ordenar = "Orden by " + Orden;
            return conexion.ObtenerDatos("Select " + Campos + " from Marcas where " + Condicion + Orden);
        }
    }
}
