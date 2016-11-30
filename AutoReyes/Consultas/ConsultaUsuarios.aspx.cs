using BLL;
using System;
using System.Collections.Generic;
using System.Data;
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
            if (Session["Usuarios"] != null)
            {
                Usuarios usuario = new Usuarios();
                usuario = (Usuarios)Session["Usuarios"];
                if (usuario.Prioridad != 1)
                    Response.Redirect("/WebForm/Default.aspx");
            }
            else
                Response.Redirect("/WebForm/Login.aspx");

            if (!IsPostBack)
            {
                UsuariosListView.DataSource = MostrarUsurios();
                UsuariosListView.DataBind();
            }
        }

        protected string Filtro()
        {

            Usuarios usuario = new Usuarios();
            string filtro = "1=1";

            if (FiltroTextbox.Text.Length > 0)
            {
                filtro = FiltroDropDownList.SelectedValue + " like '%" + FiltroTextbox.Text + "%'";
            }

            UsuariosListView.DataSource = usuario.Listado("U.UsuarioId as 'Usuario', NombreUsuario, Nombres, Direccion, Email, prioridad", filtro, "");
            UsuariosListView.DataBind();

            return filtro;
        }

        public DataTable MostrarUsurios()
        {
            Usuarios usuario = new Usuarios();
            return usuario.Listado("U.UsuarioId as 'Usuario', NombreUsuario, Nombres, Direccion, Email, prioridad", "1=1", "");
        }

        protected void FiltroButton_Click(object sender, EventArgs e)
        {
            Filtro();
        }

    }
}