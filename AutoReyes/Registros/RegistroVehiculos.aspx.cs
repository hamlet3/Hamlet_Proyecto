using BLL;
using System;
using System.Collections.Generic;
using System.Data;
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
            if (!IsPostBack)
            {
                LLenarDropDownList();
            }
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
            Session.Clear();
        }

        public void LLenarDropDownList()
        {
            Utilerias utileria = new Utilerias();

            MarcaDropDownList.DataSource = utileria.ListarMarcas();
            MarcaDropDownList.DataTextField = "Descripcion";
            MarcaDropDownList.DataValueField = "MarcaId";
            MarcaDropDownList.DataBind();
            MarcaDropDownList.Items.Insert(0, "Elige Marca");


            ColorDropDownList.DataSource = utileria.ListarColores();
            ColorDropDownList.DataTextField = "Descripcion";
            ColorDropDownList.DataValueField = "ColorId";
            ColorDropDownList.DataBind();
            ColorDropDownList.Items.Insert(0, "Elige Color");

            MotorDropDownList.DataSource = utileria.ListarMotores();
            MotorDropDownList.DataTextField = "Descripcion";
            MotorDropDownList.DataValueField = "MotorId";
            MotorDropDownList.DataBind();
            MotorDropDownList.Items.Insert(0, "Elige Motor");

            TransmisionDropDownList.DataSource = utileria.ListarTransmisiones();
            TransmisionDropDownList.DataTextField = "Descripcion";
            TransmisionDropDownList.DataValueField = "TransmisionId";
            TransmisionDropDownList.DataBind();
            TransmisionDropDownList.Items.Insert(0, "Elige Transmision");

            EstadoDropDownList.DataSource = utileria.ListarEstados();
            EstadoDropDownList.DataTextField = "Descripcion";
            EstadoDropDownList.DataValueField = "EstadoId";
            EstadoDropDownList.DataBind();
            EstadoDropDownList.Items.Insert(0, "Elige Estado");
        }

        public void Mensaje(string mensaje)
        {
            Response.Write("<script>alert('" + mensaje + "')</script>");
        }

        public Vehiculos ObtenerDatos()
        {
            Utilerias utileria = new Utilerias();
            Vehiculos vehiculo;
            if (Session["Vehiculo"] == null)
                Session["Vehiculo"] = new Vehiculos();

            vehiculo = (Vehiculos)Session["Vehiculo"];

            vehiculo.MarcaId = utileria.ConvertirValor(MarcaDropDownList.SelectedValue);
            vehiculo.ModeloId = utileria.ConvertirValor(ModeloDropDownList.SelectedValue);
            vehiculo.MotorId = utileria.ConvertirValor(MotorDropDownList.SelectedValue);
            vehiculo.ColorId = utileria.ConvertirValor(ColorDropDownList.SelectedValue);
            vehiculo.TransmisionId = utileria.ConvertirValor(TransmisionDropDownList.SelectedValue);
            vehiculo.Año = utileria.ConvertirValor(AñoTextBox.Text);
            vehiculo.Precio = utileria.ConvertirValor(PrecioTextBox.Text);
            vehiculo.Kilometraje = utileria.ConvertirValor(KilometrajeTextBox.Text);
            vehiculo.EstadoId = utileria.ConvertirValor(EstadoDropDownList.SelectedValue);

            return vehiculo;
        }

        protected void NuevoButton_Click(object sender, EventArgs e)
        {
            Limpiar();
            Utilerias2.ShowToastr(this, "", "Exito al Limpiar!", "success");
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            Vehiculos vehiculo = ObtenerDatos();
            bool suiche = false;

            if (vehiculo.Insertar())
            {
                Utilerias2.ShowToastr(this, "","Exito!", "success");
                Limpiar();
            }
            else
                Utilerias2.ShowToastr(this, "Error", "Error al guardar", "error");
        }

        protected void MarcaDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            Utilerias utileria = new Utilerias();
            ModeloDropDownList.DataSource = utileria.ListarModelos(utileria.ConvertirValor(MarcaDropDownList.SelectedValue));
            ModeloDropDownList.DataTextField = "Descripcion";
            ModeloDropDownList.DataValueField = "ModeloId";
            ModeloDropDownList.DataBind();
            ModeloDropDownList.Items.Insert(0, "Elige Modelo");
        }

        protected void AgregarButton_Click(object sender, EventArgs e)
        {
            if (FotoFileUpload.HasFile)
            {
                Vehiculos vehiculo;
                if (Session["Vehiculo"] == null)
                    Session["Vehiculo"] = new Vehiculos();

                vehiculo = (Vehiculos)Session["Vehiculo"];

                FotoFileUpload.SaveAs(Server.MapPath("~/Fotos/" + FotoFileUpload.FileName));
                vehiculo.AgregarFotos("~/Fotos/" + FotoFileUpload.FileName);
                Session["Vehiculo"] = vehiculo;
                Utilerias2.ShowToastr(this, "", "Agregado correctamente", "success");
            }else
            {
                Utilerias2.ShowToastr(this, "", "Seleccione una foto", "info");
            }
        }
    }
}