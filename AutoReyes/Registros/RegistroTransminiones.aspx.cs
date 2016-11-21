using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoReyes.Registros
{
    public partial class RegistroTransminiones : System.Web.UI.Page
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
        }

        public void Limpiar() {
            DescripcionTextBox.Text = "";
            BuscarIdTextBox.Text = "";
        }

        protected void BuscarIdBtn_Click(object sender, EventArgs e)
        {
            Transmisiones transmision = new Transmisiones();
            Utilerias utileria = new Utilerias();
            transmision.TransmisionId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (transmision.Buscar(transmision.TransmisionId))
            {
                DescripcionTextBox.Text = transmision.Descripcion;
            }
            else
            {
                Utilerias2.ShowToastr(this, "", "Id no econtrado", "Warning");
                Limpiar();
            }

        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Transmisiones transmision = new Transmisiones();
            Utilerias utileria = new Utilerias();
            transmision.TransmisionId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            transmision.Descripcion = DescripcionTextBox.Text;
            bool suiche = false;
            try {
                if (string.IsNullOrWhiteSpace(BuscarIdTextBox.Text))
                    suiche = transmision.Insertar();
                else
                    suiche = transmision.Editar();

                if (suiche)
                {
                    Utilerias2.ShowToastr(this, "", "Exito!", "success");
                    Limpiar();
                }
                
            } catch (Exception ex) { Utilerias2.ShowToastr(this, "Error", ex.Message, "error"); }
        }

        protected void EliminarBtn_Click(object sender, EventArgs e)
        {
            Transmisiones transmision = new Transmisiones();
            Utilerias utileria = new Utilerias();
            bool suiche = false;
            transmision.Buscar(utileria.ConvertirValor(BuscarIdTextBox.Text));

            if (suiche)
            {
                if (transmision.Eliminar())
                {
                    Utilerias2.ShowToastr(this, "", "Exito al eliminar", "success");
                    Limpiar();
                }
                else
                {
                    Utilerias2.ShowToastr(this, "Error", "Error al eliminar", "error");
                }
            }else
                Utilerias2.ShowToastr(this, "", "Este id no existe", "Warning");
        }

        protected void NuevoBtn_Click(object sender, EventArgs e)
        {
            Limpiar();
            Utilerias2.ShowToastr(this, "", "Exito al Limpiar!", "success");
        }
    }
}