using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DAL;

namespace BLL
{
    public class Usuarios : ClaseMaestra
    {
        public int UsuarioId { get; set; }
        public string Nombre { get; set; }
        public string NombreUsuario { get; set; }
        public string Direccion { get; set; }
        public string Email { get; set; }
        public string Contraseña { get; set; }
        public int Prioridad { get; set; }
        public List<UsuarioTelefonos> ListaTelefono = new List<UsuarioTelefonos>();

    
        public Usuarios(string nombre, string direccion,string email, string contraseña, int prioridad)
        {
          
            this.Nombre = nombre;
            this.Direccion = direccion;
            this.Email = email;
            this.Contraseña = contraseña;
            this.Prioridad = prioridad;
        }

        public Usuarios() { }

        public bool ValidarListaTelefono()
        {
            if (ListaTelefono.Count > 0)
            {
                return true;
            }
            else
                return false;
        }

        public void AgregarTelefono(string telefono, int tipoTelefonoId) {
            ListaTelefono.Add(new UsuarioTelefonos(telefono, tipoTelefonoId));
        }

        public void DevolverTelefono(string telefono, string descripcion)
        {
            ListaTelefono.Add(new UsuarioTelefonos(telefono, descripcion));
        }

        public override bool Insertar()
        {
            ConexionDb conexion = new ConexionDb();
            int retorno;
            object identity;
            try
            {
                 identity=conexion.ObtenerValor(String.Format("Insert into Usuarios(NombreUsuario, Nombres, Direccion, Email, Contraseña, Prioridad) Values('{0}', '{1}', '{2}', '{3}', '{4}', {5}) Select @@identity",this.NombreUsuario ,this.Nombre, this.Direccion, this.Email, this.Contraseña, this.Prioridad));
                int.TryParse(identity.ToString(), out retorno);

                foreach(UsuarioTelefonos telefono in ListaTelefono)
                {
                    conexion.Ejecutar(String.Format("Insert into UsuarioTelefonos(UsuarioId, Numero, TipoTelefonoId) Values({0},'{1}',{2})", retorno, telefono.Telefono, telefono.TipoTelefonoId));
                }
            } catch(Exception ex) { throw ex; }
            return retorno>0;
        }


        public override bool Editar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;
            try
            {
                conexion.Ejecutar(String.Format("Update Usuarios set Nombre='{0}', Direccion='{1}', Email='{2}',Contraseña ='{4}', Prioridad='{5}' where UsuarioId={6}", this.Nombre, this.Direccion, this.Email,this.Contraseña, this.Prioridad, this.UsuarioId));
                retorno = true;

                conexion.Ejecutar(String.Format("Delete from UsuarioTelefonos where UsuarioId =", this.UsuarioId));

                foreach (UsuarioTelefonos telefono in ListaTelefono) {
                    conexion.Ejecutar(String.Format("Insert into UsuarioTelefonos(UsuarioId, Numero, TipoTelefono) Values({0},'{1}',{2})", this.UsuarioId, telefono.Telefono, telefono.TipoTelefonoId));
                }
            }catch(Exception ex) { throw ex; }
            return retorno;
        }

        public override bool Eliminar()
        {
            ConexionDb conexion = new ConexionDb();
            bool retorno = false;
            try
            {
                conexion.Ejecutar(String.Format("Delete from UsuarioTelefonos Where UsuarioId ="+this.UsuarioId+";"+"Delete from Usuarios where UsuarioId={0}", this.UsuarioId));
                retorno = true;
            }catch(Exception ex) { throw ex; }
            return retorno;
        }

        public override bool Buscar(int IdBuscado)
        {
            ConexionDb conexion = new ConexionDb();
            DataTable dt = new DataTable();
            DataTable telefonoDt = new DataTable();

            dt = conexion.ObtenerDatos("Select * from Usuarios where UsuarioId=" + IdBuscado);
            if (dt.Rows.Count > 0)
            {
                this.UsuarioId = (int)dt.Rows[0]["UsuarioId"];
                this.NombreUsuario = dt.Rows[0]["NombreUsuario"].ToString();
                this.Nombre = dt.Rows[0]["Nombres"].ToString();
                this.Direccion = dt.Rows[0]["Direccion"].ToString();
                this.Email = dt.Rows[0]["Email"].ToString();
                this.Contraseña = dt.Rows[0]["Contraseña"].ToString();
                this.Prioridad =(int)dt.Rows[0]["Prioridad"];

               telefonoDt = conexion.ObtenerDatos(String.Format("Select * from UsuarioTelefonos as UT inner join TiposTelefono as TT on UT.TipoTelefonoId = TT.TipoTelefonoId  where UsuarioId=" + IdBuscado));
            }

            foreach(DataRow row in telefonoDt.Rows)
            {
                DevolverTelefono(row["Numero"].ToString(), row["Descripcion"].ToString());
            }

            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb conexion = new ConexionDb();
            string ordenar = "";
            if (!Orden.Equals(""))
                ordenar = "order by " + Orden;
            return conexion.ObtenerDatos("Select " + Campos + " From Usuarios as U inner join UsuarioTelefonos as UT on U.UsuarioId=UT.UsuarioId inner join TiposTelefono as TT on UT.TipoTelefonoId=TT.TipoTelefonoId where " + Condicion + ordenar);
        }

    }
}
