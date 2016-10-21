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
            DescripconTxT.Text = "";
            BuscarIdTxT.Text = "";
        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Colores color = new Colores();
            if (BuscarIdTxT.Text == "")
            {
                color.Descripcion = DescripconTxT.Text;
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
                int aux;
                int.TryParse(BuscarIdTxT.Text, out aux);
                color.Descripcion = DescripconTxT.Text;
                color.ColorId = aux;
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
           
            int aux;
            int.TryParse(BuscarIdTxT.Text, out aux);
            Colores color = new Colores();
            if (color.Buscar(aux))
            {
                DescripconTxT.Text = color.Descripcion;
            }
            else
            {
                Response.Write("<script>alert('Error al buscar los datos')</script>");
            }
        }

        protected void EliminarBtn_Click(object sender, EventArgs e)
        {
            Colores color = new Colores();
            int aux;
            int.TryParse(BuscarIdTxT.Text, out aux);
            color.ColorId = aux;
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