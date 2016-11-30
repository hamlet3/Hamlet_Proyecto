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
                Response.Redirect("/WebForm/Login.aspx");

            if (!IsPostBack)
            {
                ColoresListView.DataSource = MostrarColores();
                ColoresListView.DataBind();
            }
        }

        protected string Filtro()
        {

            Colores color = new Colores();
            string filtro = "1=1";

            if (FiltroTextbox.Text.Length > 0)
            {
                filtro = FiltroDropDownList.SelectedValue + " like '%" + FiltroTextbox.Text + "%'";
            }

            ColoresListView.DataSource = color.Listado("ColorId, Descripcion", filtro, "");
            ColoresListView.DataBind();

            return filtro;
        }

        public DataTable MostrarColores()
        {
            Colores color = new Colores();
            return color.Listado("*", "1=1", "");
        }

        protected void FiltroButton_Click(object sender, EventArgs e)
        {
            Filtro();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Colores color = new Colores();
            Utilerias2.dataset = "Colores";
            Utilerias2.reporte = @"Report\ReportColores.rdlc";
            Utilerias2.data = color.Listado("*", Filtro(), "");
            Response.Write("<script type='text/javascript'>detailedresults=window.open('/Reporte.aspx');</script>");
        }
    }
} 