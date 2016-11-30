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
                MotoresListView.DataSource = MostrarMotores();
                MotoresListView.DataBind();
            }
        }

        protected string Filtro()
        {

            Motores motor = new Motores();
            string filtro = "1=1";

            if (FiltroTextbox.Text.Length > 0)
            {
                filtro = FiltroDropDownList.SelectedValue + " like '%" + FiltroTextbox.Text + "%'";
            }

            MotoresListView.DataSource = motor.Listado("MotorId, Descripcion", filtro, "");
            MotoresListView.DataBind();

            return filtro;
        }

        public DataTable MostrarMotores()
        {
            Motores motor = new Motores();
            return motor.Listado("*", "1=1", "");
        }

        protected void FiltroButton_Click(object sender, EventArgs e)
        {
            Filtro();
        }
    }
}