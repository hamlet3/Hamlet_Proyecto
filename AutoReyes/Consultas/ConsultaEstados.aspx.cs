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
    public partial class ConsultaEstados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EstadoGridView.DataSource = MostrarEstados();
            EstadoGridView.DataBind();
        }

        public DataTable MostrarEstados()
        {
            Estados estado = new Estados();
            return estado.Listado("*","1=1","");
        }
    }
}