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

        public void Mensaje(string mensaje)
        {
            Response.Write("<script>alert('" + mensaje + "')</script>");
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
                Mensaje("Id no encontrado");
            }

        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Transmisiones transmision = new Transmisiones();
            if (BuscarIdTextBox.Text=="")
            {
                transmision.Descripcion = DescripcionTextBox.Text;
                if (transmision.Insertar()) {
                    Mensaje("Exito al guardar");
                    Limpiar();
                } else{
                    Mensaje("Error al guardar");
                }
            }else
            {
                Utilerias utileria = new Utilerias();
                transmision.TransmisionId = utileria.ConvertirValor(BuscarIdTextBox.Text);
                transmision.Descripcion = DescripcionTextBox.Text;
                if (transmision.Editar())
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
            Transmisiones transmision = new Transmisiones();
            Utilerias utileria = new Utilerias();
            transmision.TransmisionId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (transmision.Eliminar())
            {
                Mensaje("Exito al eliminar");
                Limpiar();
            }
            else
            {
                Mensaje("Error al eliminar");
            }
        }

        protected void NuevoBtn_Click(object sender, EventArgs e)
        {
            Limpiar();
        }
    }
}