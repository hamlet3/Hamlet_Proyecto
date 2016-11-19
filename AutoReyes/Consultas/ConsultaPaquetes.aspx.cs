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
	public partial class ConsultaPaquetes : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            PaquetesGridView.DataSource = MostrarPaquetes();
            PaquetesGridView.DataBind();
		}

        public DataTable MostrarPaquetes()
        {
            Paquetes paquete = new Paquetes();
            return paquete.Listado("*","1=1","");
        }
	}
}