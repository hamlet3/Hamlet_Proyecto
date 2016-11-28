using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoReyes.Loging
{
    public partial class Loging : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuarios"] != null)
            {
                Response.Redirect("/WebForm/Default.aspx");
            }
            
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            DataTable dt = new DataTable();
            dt=usuario.Listado("*", "NombreUsuario='"+NombreUsuarioTextBox.Text+"' and Contraseña='"+ContraseñaTextBox.Text+"'", "");


            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    usuario.Buscar((int)row["usuarioId"]);
                    Session["Usuarios"] = usuario;
                    if (usuario.Prioridad == 1)
                    {
                        Response.Redirect("/WebForm/DefaultAdmin.aspx");

                    }
                    else
                    {
                        Response.Redirect("/WebForm/Default.aspx");
                    }
                }
            }
            else
                Utilerias2.ShowToastr(this, "", "Nombre de usuario o contraseña incorrecta", "Warning");
        }
    }
}