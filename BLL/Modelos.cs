using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace BLL
{
    public class Modelos:ClaseMaestra
    {
        public int ModeloId { get; set; }
        public int MarcaId { get; set; }
        public string Descripcion { get; set; }

        ConexionDb conexion = new ConexionDb();
        List<Modelos> ListaModelo = new List<Modelos>();


        public Modelos() { }

        public override bool Insertar()
        {
            bool retornar = false;
            try
            {
                conexion.Ejecutar(String.Format("Insert into Modelos(Descripcion, MarcaId) Values('{0}', {1})", this.Descripcion, this.MarcaId));
                retornar = true;
            }catch(Exception ex) { throw ex; }
            return retornar;
        }

        public override bool Editar()
        {
            bool retornar = false;
            try
            {
                conexion.Ejecutar(String.Format("Update Modelos set Descripcion ='{0}', MarcaId={1} where ModeloId={2}", this.Descripcion,this.MarcaId,this.ModeloId));
                retornar = true;
            }catch(Exception ex) { throw ex; }
            return retornar;
        }

        public override bool Eliminar()
        {
            bool retornar = false;
            try
            {
                conexion.Ejecutar(String.Format("Delete from Modelos where ModeloId = {0}",this.ModeloId));
                retornar = true;
            }
            catch (Exception ex) { throw ex; }
            return retornar;
        }

        public override bool Buscar(int IdBuscado)
        {
            DataTable dt = new DataTable();
            DataTable dtLista = new DataTable();
            dt = conexion.ObtenerDatos("Select * from Modelos where ModeloId=" + IdBuscado);
            if (dt.Rows.Count>0)
            {
                this.ModeloId = (int)dt.Rows[0]["ModeloId"];
                this.MarcaId = (int)dt.Rows[0]["MarcaId"];
                this.Descripcion = dt.Rows[0]["Descripcion"].ToString();

               // dtLista = conexion.ObtenerDatos(string.Format("Select M.Descripcion, M.ModeloId from Modelos as M inner join Marca as Ma on M.MarcaId=Ma.MarcaId where M.MarcaId="+IdBuscado));
            }
            
            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            string ordenar = "";
            if (!Orden.Equals(""))
                ordenar = "Order by " + Orden;

            return conexion.ObtenerDatos("Select " + Campos + " from Modelos as M inner join Marcas as Ma on M.MarcaId=Ma.MarcaId where " + Condicion + ordenar);
        }
    }
}
