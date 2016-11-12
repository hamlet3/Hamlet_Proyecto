using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class Vehiculos : ClaseMaestra
    {

        public int VehiculoId { get; set; }
        public int UsuarioId { get; set; }
        public int ModeloId { get; set; }
        public int MarcaId { get; set; }
        public int MotorId { get; set; }
        public int ColorId { get; set; }
        public int TransmisionId { get; set; }
        public int Año { get; set; }
        public int Kilometraje { get; set; }
        public int Precio { get; set; }
        public int EstadoId { get; set; }

        public Vehiculos() { }

        ConexionDb conexion = new ConexionDb();

        public override bool Insertar()
        {
            bool retornar = false;
            try
            {
               retornar= conexion.Ejecutar(String.Format("Insert into Vehiculos(UsuariosId, ModeloId, MarcaId, MotorId, ColorId, TransmisionId, Año, Kilometraje, Precio, EstadoId ) Values({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9})", this.UsuarioId, this.ModeloId, this.MarcaId, this.MotorId, this.ColorId, this.TransmisionId, this.Año, this.Kilometraje, this.Precio, this.EstadoId));
            }
            catch (Exception ex) { throw ex; }
            return retornar;
        }

        public override bool Editar()
        {
            bool retornar = true;
            try
            {
                conexion.Ejecutar(String.Format("Update Vehiculo set UsuariosId={0}, ModeloId={1}, MarcaId={2}, MotorId={3}, ColorId={4}, TransmisionId={5}, Año={6}, Kilometraje={7}, Precio={8}, EstadoId={9} where VehiculoId={10}", this.UsuarioId, this.ModeloId, this.MarcaId, this.MotorId, this.ColorId, this.TransmisionId, this.Año, this.Kilometraje, this.Precio, this.EstadoId, this.VehiculoId));
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
                conexion.Ejecutar(String.Format("Delete from Vehiculos where VehiculoId={0}", this.VehiculoId));
                retornar = true;
            }
            catch (Exception ex) { throw ex; }
            return retornar;
        }

        public override bool Buscar(int IdBuscado)
        {
            DataTable dt = new DataTable();

            dt = conexion.ObtenerDatos(String.Format("Select * from Vehiculos where VehiculoId=" + IdBuscado));
            if (dt.Rows.Count > 0)
            {
                this.VehiculoId = (int)dt.Rows[0]["VehiculoId"]; 
                this.UsuarioId = (int)dt.Rows[0]["UsuarioId"];
                this.ModeloId = (int)dt.Rows[0]["ModeloId"];
                this.MarcaId = (int)dt.Rows[0]["MarcaId"];
                this.MotorId = (int)dt.Rows[0]["MotorId"];
                this.ColorId = (int)dt.Rows[0]["ColorId"];
                this.TransmisionId = (int)dt.Rows[0]["TransmisionId"];
                this.Año = (int)dt.Rows[0]["Año"];
                this.Kilometraje = (int)dt.Rows[0]["Kilometraje"];
                this.Precio = (int)dt.Rows[0]["Precio"];
                this.EstadoId = (int)dt.Rows[0]["EstadoId"];

    }
            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            string ordenar = "";
            if (!Orden.Equals(""))
                ordenar = "Orden by " + Orden;
            return conexion.ObtenerDatos("Select " + Campos + " from Vehiculos where " + Condicion + ordenar);
        }
    }
}
