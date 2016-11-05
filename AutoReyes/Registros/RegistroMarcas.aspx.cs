using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoReyes.Registros
{
    public partial class RegistroMarcas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        public void Limpiar()
        {
            DescripcionTextBox.Text = "";
            BuscarIdTextBox.Text = "";
        }

        public void Mensaje(string mensaje)
        {
            Response.Write("<script>alert('" + mensaje + "')</script>");
        }

        protected void NuevoBtn_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Marcas marca = new Marcas();
            if (BuscarIdTextBox.Text=="")
            {
                marca.Descripcion = DescripcionTextBox.Text;
                if (marca.Insertar())
                {
                    Mensaje("Exito al guardar");
                    Limpiar();
                }
                else
                {
                    Mensaje("Error al guardar");
                }
            }
            else
            {
                marca.Descripcion = DescripcionTextBox.Text;
                Utilerias utileria = new Utilerias();
                marca.MarcaId = utileria.ConvertirValor(BuscarIdTextBox.Text);
                if (marca.Editar())
                {
                    Mensaje("Exito al editar");
                    Limpiar();
                }
                else
                {
                    Mensaje("Error al editar");
                }
            }
        }

        protected void EliminarBtn_Click(object sender, EventArgs e)
        {
            Marcas marca = new Marcas();
            Utilerias utileria = new Utilerias();
            marca.MarcaId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (marca.Eliminar()) {
                Mensaje("Exito al eliminar");
                Limpiar();
            } else {
                Mensaje("Error al eliminar");
            }
        }

        protected void BuscarIdBtn_Click(object sender, EventArgs e)
        {
            Marcas marca = new Marcas();
            Utilerias utileria = new Utilerias();
            marca.MarcaId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (marca.Buscar(marca.MarcaId))
            {
                DescripcionTextBox.Text = marca.Descripcion;
            }
            else
            {
                Mensaje("Id no encontrado");
            }
        }
    }
}