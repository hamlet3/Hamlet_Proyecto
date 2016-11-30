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
            if (Session["Usuarios"] == null)
            {
               Response.Redirect("/WebForm/Login.aspx");
            }
            ValidarPaquete();
            if (!IsPostBack)
            {
                LLenarDropDownList();
            }

           
        }

        public void ValidarPaquete()
        {
            DataTable dt = new DataTable();
            bool aux = false;
            Usuarios usuario = new Usuarios();
            VentasPaquetes venta = new VentasPaquetes();
            usuario = (Usuarios)Session["Usuarios"];

            dt = venta.Listado("*", "UsuarioId=" + usuario.UsuarioId, "");

            foreach (DataRow row in dt.Rows)
            {
                if ((int)row["EspaciosRestante"] != 0)
                {
                    aux = true;
                }
            }
            if (!aux)
                Response.Redirect("/WebForm/ComprarPaquete.aspx");
        }

        public void UsarEspacio()
        {
            DataTable dt = new DataTable();
            Usuarios usuario = new Usuarios();
            VentasPaquetes venta = new VentasPaquetes();
            usuario =(Usuarios)Session["Usuarios"];

            dt = venta.Listado("*","UsuarioId="+usuario.UsuarioId,"");

            foreach(DataRow row in dt.Rows)
            {
                if ((int)row["EspaciosRestante"] != 0)
                {
                    venta.EspaciosRestante = (int)row["EspaciosRestante"]-1;
                    venta.VentapaqueteId = (int)row["VentaPaqueteId"];
                    venta.Editar();
                    break;
                }
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

        public void MarcasDropDownList()
        {
            Marcas marca = new Marcas();
            MarcaDropDownList.DataSource = marca.Listado("*","1=1","");
            MarcaDropDownList.DataTextField = "Descripcion";
            MarcaDropDownList.DataValueField = "MarcaId";
            MarcaDropDownList.DataBind();
            MarcaDropDownList.Items.Insert(0, "Elige Marca");
        }

        public void ColoresDropDownList()
        {
            Colores color = new Colores();

            ColorDropDownList.DataSource = color.Listado("*","1=1","");
            ColorDropDownList.DataTextField = "Descripcion";
            ColorDropDownList.DataValueField = "ColorId";
            ColorDropDownList.DataBind();
            ColorDropDownList.Items.Insert(0, "Elige Color");
        }

        public void MotoresDropDownList()
        {
            Motores motor = new Motores();

            MotorDropDownList.DataSource = motor.Listado("*","1=1","");
            MotorDropDownList.DataTextField = "Descripcion";
            MotorDropDownList.DataValueField = "MotorId";
            MotorDropDownList.DataBind();
            MotorDropDownList.Items.Insert(0, "Elige Motor");
        }

        public void TransmisionesDropdownList()
        {
            Transmisiones transmision = new Transmisiones();

            TransmisionDropDownList.DataSource = transmision.Listado("*","1=1","");
            TransmisionDropDownList.DataTextField = "Descripcion";
            TransmisionDropDownList.DataValueField = "TransmisionId";
            TransmisionDropDownList.DataBind();
            TransmisionDropDownList.Items.Insert(0, "Elige Transmision");
        }

        public void EstadosDropdownList()
        {
            Estados estado = new Estados();

            EstadoDropDownList.DataSource = estado.Listado("*","1=1","");
            EstadoDropDownList.DataTextField = "Descripcion";
            EstadoDropDownList.DataValueField = "EstadoId";
            EstadoDropDownList.DataBind();
            EstadoDropDownList.Items.Insert(0, "Elige Estado");
        }

        public void LLenarDropDownList()
        {
            MarcasDropDownList();
            ColoresDropDownList();
            MotoresDropDownList();
            TransmisionesDropdownList();
            EstadosDropdownList();
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

            if (vehiculo.ValidarListaFoto())
            {
                if (vehiculo.Insertar())
                {
                    UsarEspacio();
                    Limpiar();
                    Utilerias2.ShowToastr(this, "", "Su auto se a guardado correctamente", "success");
                    Response.Redirect("/WebForm/Default");
                }
                else
                    Utilerias2.ShowToastr(this, "Error", "Error al guardar", "error");
            }
            else
                Utilerias2.ShowToastr(this, "", "Agrege por lo menos una foto", "info");
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