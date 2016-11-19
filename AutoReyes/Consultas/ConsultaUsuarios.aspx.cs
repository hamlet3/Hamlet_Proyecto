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
                    string nombres = BuscarNombreTextBox.Text;
                    UsuariosGridvierw.DataSource = usuario.Listado("U.UsuarioId, NombreUsuario, Nombres, Direccion, Email", " 0=0 ", "");
                    UsuariosGridvierw.DataBind();              
        }

        protected void ListarUsuarios_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            string nombres = BuscarNombreTextBox.Text;
            UsuariosGridvierw.DataSource = usuario.Listado("U.UsuarioId, NombreUsuario, Nombres, Direccion, Email", "Nombres='" + BuscarNombreTextBox.Text + "'", "");
            UsuariosGridvierw.DataBind();
        }

        protected void BuscarIdBtn_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            int Tipo;
            int.TryParse(BuscarIdTextBox.Text, out Tipo);
            TelefonosUsuarioGridVierw.DataSource = usuario.Listado(" Descripcion, Numero ", " U.UsuarioId='" + Tipo + "'", "");
            TelefonosUsuarioGridVierw.DataBind();
        }

        protected void RecargarBtn_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            string nombres = BuscarNombreTextBox.Text;
            UsuariosGridvierw.DataSource = usuario.Listado("U.UsuarioId, NombreUsuario, Nombres, Direccion, Email", " 0=0 ", "");
            UsuariosGridvierw.DataBind();
        }
    }
}