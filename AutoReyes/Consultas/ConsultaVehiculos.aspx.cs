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
                VehiculosRepeater.DataSource = MostrarVehiculos();
                VehiculosRepeater.DataBind();
            }
        }

        public DataTable MostrarVehiculos()
        {
            Vehiculos vehiculo = new Vehiculos();
            return vehiculo.Listado("V.VehiculoId, Ma.Descripcion, M.Descripcion, Mo.Descripcion, E.Descripcion, C.Descripcion, T.Descripcion, Año, Kilometraje, Precio, F.Foto", "1=1", "");
        }
    }
}