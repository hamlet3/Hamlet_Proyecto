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

        public void Mensaje(string mensaje)
        {
            Response.Write("<script>alert('" + mensaje + "')</script>");
        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Colores color = new Colores();
            if (BuscarIdTextBox.Text == "")
            {
                color.Descripcion = DescripconTextBox.Text;
                if (color.Insertar())
                {
                    Mensaje("Exito al guardar");
                    Limpiar();
                }else
                {
                    Mensaje("Error al guardar");
                }
            }else
            {
                Utilerias utileria = new Utilerias();
                color.ColorId = utileria.ConvertirValor(BuscarIdTextBox.Text);
                color.Descripcion = DescripconTextBox.Text;
                if (color.Editar()) {
                    Mensaje("Exito al editar");
                    Limpiar();
                }
                else
                {
                    Mensaje("Error al editar");
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
                Mensaje("Id no encontrado");
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
                Mensaje("Exito al eliminar");
            }
            else
            {
                Mensaje("Error al eliminar");
            }
        }
    }
}