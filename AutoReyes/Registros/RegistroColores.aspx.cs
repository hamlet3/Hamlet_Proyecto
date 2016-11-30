using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoReyes
{
    public partial class RegistroColores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Usuarios"] != null)
                {
                    Usuarios usuario = new Usuarios();
                    usuario= (Usuarios)Session["Usuarios"];
                    if (usuario.Prioridad != 1)
                        Response.Redirect("/WebForm/Default.aspx");
                }
                else
                    Response.Redirect("/WebForm/Login.aspx");

            }
                
        }

        public void Limpiar() {
            DescripcionTextBox.Text = "";
            BuscarIdTextBox.Text = "";
        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Colores color = new Colores();
            Utilerias utileria = new Utilerias();
            color.ColorId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            color.Descripcion = DescripcionTextBox.Text;

            bool suiche = false;
            try
            {
                if (string.IsNullOrWhiteSpace(BuscarIdTextBox.Text))
                {
                       suiche = color.Insertar();
                }
                else
                    suiche = color.Editar();

                if (suiche)
                {
                    Utilerias2.ShowToastr(this, "", "Exito", "success");
                    Limpiar();
                }
            } catch (Exception ex) { Utilerias2.ShowToastr(this, "Error \n", ex.Message, "error"); }         
        }

        protected void NuevoBtn_Click(object sender, EventArgs e)
        {
            Limpiar();
            Utilerias2.ShowToastr(this, "", "Exito al Limpiar!", "success");
        }

        protected void BuscarBtn_Click(object sender, EventArgs e)
        {
           
            Colores color = new Colores();
            Utilerias utileria = new Utilerias();
            color.ColorId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (color.Buscar(color.ColorId))
            {
                DescripcionTextBox.Text = color.Descripcion;
            }
            else
                Utilerias2.ShowToastr(this, "", "Id no encontrado!", "Warning");           
        }

        protected void EliminarBtn_Click(object sender, EventArgs e)
        {
            Colores color = new Colores();
            Utilerias utileria = new Utilerias();
            bool suiche=false;
            suiche = color.Buscar(utileria.ConvertirValor(BuscarIdTextBox.Text));
            if(suiche) {
                if (color.Eliminar())
                {
                    Limpiar();
                    Utilerias2.ShowToastr(this, "", "Exito al eliminar!", "success");
                }
                else
                {
                    Utilerias2.ShowToastr(this, "Error", "Error al eliminar!", "error");
                    Limpiar();
                }
            } else
                Utilerias2.ShowToastr(this, "", "Este id no existe", "Warning");          
        }

    }
}