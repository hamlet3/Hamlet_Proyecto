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
    public partial class ConsultaTransmisiones : System.Web.UI.Page
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

            if (!IsPostBack) {
                TransmisionesGridView.DataSource = MostrarTransmisiones();
                TransmisionesGridView.DataBind();
            }
        }

        public DataTable MostrarTransmisiones()
        {
            Transmisiones transmision = new Transmisiones();
            return transmision.Listado("*","1=1","");
        }
    }
}