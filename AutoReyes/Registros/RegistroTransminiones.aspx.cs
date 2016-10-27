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

        }

        public void Limpiar() {
            DescripcionTxT.Text = "";
            BuscarIdTxT.Text = "";
        }

        protected void BuscarIdBtn_Click(object sender, EventArgs e)
        {
            int aux;
            Transmisiones transmision = new Transmisiones();
            int.TryParse(BuscarIdTxT.Text, out aux);
            if (transmision.Buscar(aux))
            {
                DescripcionTxT.Text = transmision.Descripcion;
            }

        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Transmisiones transmision = new Transmisiones();
            if (BuscarIdTxT.Text=="")
            {
                transmision.Descripcion = DescripcionTxT.Text;
                if (transmision.Insertar()) {
                    Response.Write("<script>alert('Se a guardado correctamente')</script>");
                    Limpiar();
                } else{
                    Response.Write("<script>alert('Error al guardar')</script>");
                }
            }else
            {
                int aux;
                int.TryParse(BuscarIdTxT.Text, out aux);
                transmision.TransmisionId = aux;
                transmision.Descripcion = DescripcionTxT.Text;
                if (transmision.Editar())
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
            Transmisiones transmision = new Transmisiones();
            int.TryParse(BuscarIdTxT.Text, out aux);
            transmision.TransmisionId = aux;
            if (transmision.Eliminar())
            {
                Response.Write("<script>alert('Se a eliminado correctamente')</script>");
                Limpiar();
            }
            else
            {
                Response.Write("<script>alert('Error al eliminar')</script>");
            }
        }

        protected void NuevoBtn_Click(object sender, EventArgs e)
        {
            Limpiar();
        }
    }
}