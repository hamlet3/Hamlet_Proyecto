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
    public partial class ConsultaModelos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ModelosGridview.DataSource = MostrarMarcas();
            ModelosGridview.DataBind();
        }

        public DataTable MostrarMarcas()
        {
            Modelos modelo = new Modelos();
            return modelo.Listado("ModeloId, M.Descripcion","1=1","");
        }
    }
}