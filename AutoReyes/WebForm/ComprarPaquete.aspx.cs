using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoReyes.WebForm
{
    public partial class ComprarPaquete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PaquetesRepeater.DataSource = ObtenerDatos();
                PaquetesRepeater.DataBind();
            }
        }

        public DataTable ObtenerDatos()
        {
            Paquetes paquete = new Paquetes();
            return paquete.Listado("Descripcion","1=1","");
        }
    }
}