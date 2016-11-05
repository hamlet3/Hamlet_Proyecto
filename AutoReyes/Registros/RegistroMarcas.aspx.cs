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
                    Response.Write("<script>alert('Se a guardado correctamente')</script>");
                    Limpiar();
                }
                else
                {
                    Response.Write("<script>alert('Error al guardar')</script>");
                }
            }
            else
            {
                marca.Descripcion = DescripcionTextBox.Text;
                Utilerias utileria = new Utilerias();
                marca.MarcaId = utileria.ConvertirValor(BuscarIdTextBox.Text);
                if (marca.Editar())
                {
                    Response.Write("<script>alert('Se a editado correctamente')</script>");
                    Limpiar();
                }
                else
                {
                    Response.Write("<script>alert('Error al editar')</script>");
                }
            }
        }

        protected void EliminarBtn_Click(object sender, EventArgs e)
        {
            Marcas marca = new Marcas();
            Utilerias utileria = new Utilerias();
            marca.MarcaId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (marca.Eliminar()) {
                Response.Write("<script>alert('Se a eliminado correctamente')</script>");
                Limpiar();
            } else {
                Response.Write("<script>alert('Error al eliminar')</script>");
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
                Response.Write("<script>alert('Id no encontrado')</script>");
            }
        }
    }
}