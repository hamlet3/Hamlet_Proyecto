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
                Response.Write("<script>alert('Id no encontrado')</script>");
            }

        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Transmisiones transmision = new Transmisiones();
            if (BuscarIdTextBox.Text=="")
            {
                transmision.Descripcion = DescripcionTextBox.Text;
                if (transmision.Insertar()) {
                    Response.Write("<script>alert('Se a guardado correctamente')</script>");
                    Limpiar();
                } else{
                    Response.Write("<script>alert('Error al guardar')</script>");
                }
            }else
            {
                Utilerias utileria = new Utilerias();
                transmision.TransmisionId = utileria.ConvertirValor(BuscarIdTextBox.Text);
                transmision.Descripcion = DescripcionTextBox.Text;
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
            Transmisiones transmision = new Transmisiones();
            Utilerias utileria = new Utilerias();
            transmision.TransmisionId = utileria.ConvertirValor(BuscarIdTextBox.Text);
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