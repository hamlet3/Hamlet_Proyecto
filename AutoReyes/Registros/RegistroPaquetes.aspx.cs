using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoReyes.Registros
{
    public partial class ReportePaquetes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Limpiar() {
            BuscarIdTextBox.Text = "";
            EspaciosTextBox.Text = "";
            CostoTextBox.Text = "";
            DescripcionTextBox.Text = "";
            
        }

        protected void NuevoBtn_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        public void Mensaje(string mensaje)
        {
            Response.Write("<script>alert('" + mensaje + "')</script>");
        }

        protected void BuscarIdBtn_Click(object sender, EventArgs e)
        {
            Paquetes paquete = new Paquetes();
            Utilerias utileria = new Utilerias();
            paquete.PaqueteId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (paquete.Buscar(paquete.PaqueteId))
            {
                DescripcionTextBox.Text = paquete.Descripcion;
                CostoTextBox.Text = paquete.Costo.ToString();
                EspaciosTextBox.Text = paquete.Espacios.ToString();

            }else
            {
                Mensaje("Id no encontrado");
            }
        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Paquetes paquete = new Paquetes();
            Utilerias utileria = new Utilerias();
            if (BuscarIdTextBox.Text == "")
            {
                paquete.Descripcion = DescripcionTextBox.Text;
                paquete.Costo = utileria.ConvertirValor(CostoTextBox.Text);
                paquete.Espacios = utileria.ConvertirValor(EspaciosTextBox.Text);
                if (paquete.Insertar())
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
                paquete.PaqueteId = utileria.ConvertirValor(BuscarIdTextBox.Text);
                paquete.Descripcion = DescripcionTextBox.Text;
                paquete.Costo = utileria.ConvertirValor(CostoTextBox.Text);
                paquete.Espacios = utileria.ConvertirValor(EspaciosTextBox.Text);
                if (paquete.Editar())
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
            Paquetes paquete = new Paquetes();
            Utilerias utileria = new Utilerias();
            paquete.PaqueteId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (paquete.Eliminar())
            {
                Mensaje("Exito al eliminar");
                Limpiar();
            }
            else
            {
                Mensaje("Error al eliminar");
            }
        }
    }
}