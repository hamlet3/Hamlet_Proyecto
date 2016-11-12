using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoReyes.Registros
{
    public partial class RegistoVehiculos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Limpiar()
        {
            MarcaDropDownList.SelectedIndex = 0;
            ModeloDropDownList.SelectedIndex = 0;
            TransmisionDropDownList.SelectedIndex = 0;
            ColorDropDownList.SelectedIndex = 0;
            EstadoDropDownList.SelectedIndex = 0;
            MotorDropDownList.SelectedIndex = 0;
            PrecioTextBox.Text = "";
            KilometrajeTextBox.Text = "";
            AñoTextBox.Text = "";
        }

        public void Mensaje(string mensaje)
        {
            Response.Write("<script>alert('" + mensaje + "')</script>");
        }

        public Vehiculos ObtenerDatos()
        {
            Vehiculos vehiculo = new Vehiculos();
            vehiculo.MarcaId = MarcaDropDownList.SelectedIndex;
            vehiculo.ModeloId = ModeloDropDownList.SelectedIndex;
            vehiculo.MotorId = ModeloDropDownList.SelectedIndex;
            vehiculo.ColorId = ColorDropDownList.SelectedIndex;
            vehiculo.TransmisionId = TransmisionDropDownList.SelectedIndex;
            vehiculo.EstadoId = EstadoDropDownList.SelectedIndex;

            return vehiculo;
        }

        protected void NuevoButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            Vehiculos vehiculo = ObtenerDatos();
            if (vehiculo.Insertar())
            {
                Mensaje("Exito al guardar");
                Limpiar();
            }
            else
                Mensaje("Error al guardar");
        }
    }
}