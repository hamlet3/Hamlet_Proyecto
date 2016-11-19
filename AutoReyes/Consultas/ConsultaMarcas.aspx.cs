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
    public partial class ConsultaMarcas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MarcasGridView.DataSource = MostrarMarcas();
                MarcasGridView.DataBind();
            }
        }

        public DataTable MostrarMarcas()
        {
            Utilerias utileria = new Utilerias();
            return utileria.ListarMarcas();
        }
    }
}