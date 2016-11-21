using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoReyes.Consultas
{
    public partial class ConsultaColores : System.Web.UI.Page
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
                Response.Redirect("/Login.aspx");

            if (!IsPostBack)
            {
                ColoresListView.DataSource = MostrarColores();
                ColoresListView.DataBind();
            }
        }

        public DataTable MostrarColores()
        {
            Colores color = new Colores();
            return color.Listado("*", "1=1", "");
        }
    }
}