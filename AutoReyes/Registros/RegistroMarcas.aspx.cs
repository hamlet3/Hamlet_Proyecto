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
            DescripcionTxT.Text = "";
            BuscarIdTxT.Text = "";
        }

        protected void NuevoBtn_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Marcas marca = new Marcas();
            if (BuscarIdTxT.Text=="")
            {
                marca.Descripcion = DescripcionTxT.Text;
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
                marca.Descripcion = DescripcionTxT.Text;
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
            int aux;
            Marcas marca = new Marcas();
            int.TryParse(BuscarIdTxT.Text, out aux);
            marca.MarcaId = aux;
            if (marca.Eliminar()) {
                Response.Write("<script>alert('Se a eliminado correctamente')</script>");
                Limpiar();
            } else {
                Response.Write("<script>alert('Error al eliminar')</script>");
            }
        }

        protected void BuscarIdBtn_Click(object sender, EventArgs e)
        {
            int aux;
            Marcas marca = new Marcas();
            int.TryParse(BuscarIdTxT.Text, out aux);
            if (marca.Buscar(aux))
            {
                DescripcionTxT.Text = marca.Descripcion;
            }
        }
    }
}