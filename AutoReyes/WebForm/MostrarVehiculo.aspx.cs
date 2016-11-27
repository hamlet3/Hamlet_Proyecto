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
    public partial class MostrarVehiculo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Vehiculos vehiculo = new Vehiculos();
                vehiculo =(Vehiculos) Session["Vehiculos"];
                DesplegarVehiculo(vehiculo);
                


            }
        }

        public void DesplegarVehiculo(Vehiculos vehiculo)
        {
            DataTable dt = new DataTable();
            dt = vehiculo.Listado("V.UsuarioId, Ma.Descripcion as 'Marca', M.Descripcion as 'Modelo', Mo.Descripcion as 'Motor', T.Descripcion as 'Transmision', E.Descripcion as 'Estado', C.Descripcion as 'Color', Kilometraje, Precio, Año, F.Foto", "V.VehiculoId=" + vehiculo.VehiculoId, "");


            MarcaLabel.Text = dt.Rows[0]["Marca"].ToString();
            ModeloLabel.Text = dt.Rows[0]["Modelo"].ToString();
            MotorLabel.Text = dt.Rows[0]["Motor"].ToString();
            TransmisionLabel.Text = dt.Rows[0]["Transmision"].ToString();
            EstadoLabel.Text = dt.Rows[0]["Estado"].ToString();
            ColorLabel.Text = dt.Rows[0]["Color"].ToString();
            KilometrajeLabel.Text = dt.Rows[0]["Kilometraje"].ToString();
            PrecioLabel.Text = dt.Rows[0]["Precio"].ToString();
            AñoLabel.Text = dt.Rows[0]["Año"].ToString();

            DesplegarUsuario(dt);
            FotosDataList.DataSource = dt;
            FotosDataList.DataBind();
        }

        public void DesplegarUsuario(DataTable dt)
        {
    
            Usuarios usuario = new Usuarios();
            dt = usuario.Listado("UT.Numero, Email", "U.UsuarioId=" +dt.Rows[0]["UsuarioId"], "");

            EmailLabel.Text=dt.Rows[0]["Email"].ToString();
            TelefonoLabel.Text=dt.Rows[0]["Numero"].ToString();
        }
    }
}