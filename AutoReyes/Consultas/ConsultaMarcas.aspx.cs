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
                MarcasListView.DataSource = MostrarMarcas();
                MarcasListView.DataBind();
            }
        }

        protected string Filtro()
        {

            Marcas marca = new Marcas();
            string filtro = "1=1";

            if (FiltroTextbox.Text.Length > 0)
            {
                filtro = FiltroDropDownList.SelectedValue + " like '%" + FiltroTextbox.Text + "%'";
            }

            MarcasListView.DataSource = marca.Listado("MarcaId, Descripcion", filtro, "");
            MarcasListView.DataBind();

            return filtro;
        }

        public DataTable MostrarMarcas()
        {
            Marcas marca = new Marcas();
            return marca.Listado("*", "1=1", "");
        }

        protected void FiltroButton_Click(object sender, EventArgs e)
        {
            Filtro();
        }
    }
}