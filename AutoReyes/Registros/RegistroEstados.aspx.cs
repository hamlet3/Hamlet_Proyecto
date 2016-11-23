using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoReyes.Registros
{
    public partial class RegistroEstado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            if (Session["Usuarios"] != null)
            {
                Usuarios usuario = new Usuarios();
                usuario = (Usuarios)Session["Usuarios"];
                if (usuario.Prioridad != 1)
                    Response.Redirect("/WebForm/Default.aspx");
            }
            else
                Response.Redirect("/WebForm/Login.aspx");
                */
        }

        public void Limpiar()
        {
            DescripcionTextBox.Text = "";
            BuscarIdTextBox.Text = "";
        }

        protected void NuevoButton_Click(object sender, EventArgs e)
        {
            Limpiar();
            Utilerias2.ShowToastr(this, "", "Exito al Limpiar!", "success");
        }

        protected void EliminarButton_Click(object sender, EventArgs e)
        {
            Estados estado = new Estados();
            Utilerias utileria = new Utilerias();
            bool suiche=false;
            suiche = estado.Buscar(utileria.ConvertirValor(BuscarIdTextBox.Text));
            if (suiche)
            {
                if (estado.Eliminar())
                {
                    Limpiar();
                    Utilerias2.ShowToastr(this, "", "Exito al eliminar", "success");
                }
                else
                {
                    Utilerias2.ShowToastr(this, "Error", "Error al eliminar", "error");
                    Limpiar();
                }
            }else
                Utilerias2.ShowToastr(this, "", "Este Id no existe", "Warning");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Estados estado = new Estados();
            Utilerias utileria = new Utilerias();
            estado.EstadoId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            estado.Descripcion = DescripcionTextBox.Text;
            bool suiche = false;
            try
            {
                if (string.IsNullOrWhiteSpace(BuscarIdTextBox.Text))
                {
                    suiche = estado.Insertar();
                }
                else
                {
                    suiche = estado.Editar();
                }
                if (suiche)
                {
                    Utilerias2.ShowToastr(this, "", "Exito!", "success");
                    Limpiar();
                }

            }
            catch (Exception ex) { Utilerias2.ShowToastr(this, "Error", ex.Message, "error"); }

        }

        protected void BuscarIdButton_Click(object sender, EventArgs e)
        {
            Estados estado = new Estados();
            Utilerias utileria = new Utilerias();
            estado.EstadoId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (estado.Buscar(estado.EstadoId))
            {
                DescripcionTextBox.Text = estado.Descripcion;
            }
            else
                Utilerias2.ShowToastr(this, "", "Id no encontrado!", "Warning");
        }
    }
}