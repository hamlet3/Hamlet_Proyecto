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

        }

      

        public void Limpiar() {
            DescripconTextBox.Text = "";
            BuscarIdTextBox.Text = "";
        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Colores color = new Colores();
            if (BuscarIdTextBox.Text == "")
            {
                color.Descripcion = DescripconTextBox.Text;
                if (color.Insertar())
                {
                    Response.Write("<script>alert('Se a guardado correctamente')</script>");
                    Limpiar();
                }else
                {
                    Response.Write("<script>alert('Error al aguardar')</script>");
                }
            }else
            {
                Utilerias utileria = new Utilerias();
                color.ColorId = utileria.ConvertirValor(BuscarIdTextBox.Text);
                color.Descripcion = DescripconTextBox.Text;
                if (color.Editar()) {
                    Response.Write("<script>alert('Se a editado correctamente')</script>");
                    Limpiar();
                }
                else
                {
                    Response.Write("<script>alert('Error al editar')</script>");
                }
            }
            

            
        }

        protected void NuevoBtn_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void BuscarBtn_Click(object sender, EventArgs e)
        {
           
            Colores color = new Colores();
            Utilerias utileria = new Utilerias();
            color.ColorId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (color.Buscar(color.ColorId))
            {
                DescripconTextBox.Text = color.Descripcion;
            }
            else
            {
                Response.Write("<script>alert('Id no encontrado')</script>");
            }
        }

        protected void EliminarBtn_Click(object sender, EventArgs e)
        {
            Colores color = new Colores();
            Utilerias utileria = new Utilerias();
            color.ColorId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (color.Eliminar())
            {
                Limpiar();
                Response.Write("<script>alert('Se han eliminado los datos correctamente')</script>");
            }
            else
            {
                Response.Write("<script>alert('Error al eliminar')</script>");
            }
        }
    }
}