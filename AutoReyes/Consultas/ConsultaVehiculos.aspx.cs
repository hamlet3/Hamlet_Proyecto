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
    public partial class ConsultaVehiculos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                VehiculosDataList.DataSource = MostrarVehiculos();
                VehiculosDataList.DataBind();
            }
        }

        public DataTable MostrarVehiculos()
        {
            Vehiculos vehiculo = new Vehiculos();
            return vehiculo.Listado("V.VehiculoId, Ma.Descripcion as 'Marca', M.Descripcion as 'Modelo', Mo.Descripcion, E.Descripcion as 'Estado', C.Descripcion, T.Descripcion, Año, Kilometraje, Precio, F.Foto", "1=1", "");
        }

        protected void VehiculosDataList_SelectedIndexChanged(object sender, EventArgs e)
        {
            Utilerias utileria = new Utilerias();
            DataListItem Item = VehiculosDataList.Items[VehiculosDataList.SelectedIndex];
            Label VehiculoIdLabel = (Label)Item.FindControl("VehiculoIdLabel");
            Vehiculos vehiculo = new Vehiculos();
            vehiculo.VehiculoId = utileria.ConvertirValor(VehiculoIdLabel.Text);

            Session["Vehiculos"] = vehiculo;
            Response.Redirect("/WebForm/MostrarVehiculo.aspx");
            
        }

        protected void FiltroButton_Click(object sender, EventArgs e)
        {
            Vehiculos vehiculo = new Vehiculos();

            string filtro = "1=1";

            if (FiltroTextBox.Text.Length > 0)
            {
                filtro = FiltroDropDownList.SelectedValue + " like '%" + FiltroTextBox.Text + "%'";
            }

            VehiculosDataList.DataSource = vehiculo.Listado("V.VehiculoId, Ma.Descripcion as 'Marca', M.Descripcion as 'Modelo', Mo.Descripcion, E.Descripcion as 'Estado', C.Descripcion, T.Descripcion, Año, Kilometraje, Precio, F.Foto",filtro, "");
            VehiculosDataList.DataBind();

        }
    }
}