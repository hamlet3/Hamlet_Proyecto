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
    public partial class ConsultaMotores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MotoresGridView.DataSource = MostrarMotores();
            MotoresGridView.DataBind();
        }

        public DataTable MostrarMotores()
        {
            Motores motor = new Motores();
            return motor.Listado("*","1=1","");
        }
    }
}