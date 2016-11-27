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
            if (Session["Usuarios"] == null)
            {
                Response.Redirect("/WebForm/Login.aspx");
            }

            if (!IsPostBack)
            {
                PaquetesDataList.DataSource = ObtenerDatos();
                PaquetesDataList.DataBind();
            }
        }

        public DataTable ObtenerDatos()
        {
            Paquetes paquete = new Paquetes();
            return paquete.Listado("Descripcion","1=1","");
        }

        protected void PaquetesDataList_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            DataListItem Item = PaquetesDataList.Items[PaquetesDataList.SelectedIndex];
            TextBox Descripcion = (TextBox)Item.FindControl("DescripcionTextBox");
            Paquetes paquete = new Paquetes();
  
            dt = paquete.Listado("*","Descripcion="+Descripcion.Text,"");

            Usuarios usuario = new Usuarios();
            usuario = (Usuarios)Session["Usuarios"];
            VentasPaquetes venta = new VentasPaquetes();

            venta.PaqueteId = (int)dt.Rows[0]["Paqueteid"];
            venta.EspaciosRestante =(int)dt.Rows[0]["EspaciosRestante"];
            venta.UsuarioId = usuario.UsuarioId;
            venta.Insertar();

            Response.Redirect("/Registro/Vehiculos.aspx");
        }
    }
}