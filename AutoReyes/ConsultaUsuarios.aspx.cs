using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoReyes
{
    public partial class ConsultaUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                
                    Usuarios usuario = new Usuarios();
                    string nombres = BuscarNombretxt.Text;
                    GVUsuarios.DataSource = usuario.Listado("U.UsuarioId, NombreUsuario, Nombres, Direccion, Email", " 0=0 ", "");
                    GVUsuarios.DataBind();
                

            
        }

        protected void ListarUsuarios_Click(object sender, EventArgs e)
        {

            Usuarios usuario = new Usuarios();
            string nombres = BuscarNombretxt.Text;
            GVUsuarios.DataSource = usuario.Listado("U.UsuarioId, NombreUsuario, Nombres, Direccion, Email", "Nombres='" + nombres + "'", "");
            GVUsuarios.DataBind();
        }

        protected void BuscarIdBtn_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            int Tipo;
            int.TryParse(BuscarIdTxT.Text, out Tipo);
            GVDetalle.DataSource = usuario.Listado(" Descripcion, Numero ", " U.UsuarioId='" + Tipo + "'", "");
            GVDetalle.DataBind();
        }
    }
}