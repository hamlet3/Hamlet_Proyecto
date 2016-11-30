using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;

namespace AutoReyes
{
    public partial class Reporte : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargar();
        }

        public void cargar()
        {
            Utilerias2.Reporte(ReportesReportViewer, Utilerias2.reporte, Utilerias2.dataset, Utilerias2.data);
        }
    }
}