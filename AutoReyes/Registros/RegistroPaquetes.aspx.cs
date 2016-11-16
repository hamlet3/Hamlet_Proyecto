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
            EliminarButton.Enabled = false;
            
        }

        public Paquetes PasarDatos(Paquetes paquete)
        {
            Utilerias utileria = new Utilerias();
            paquete.PaqueteId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            paquete.Costo = utileria.ConvertirValor(CostoTextBox.Text);
            paquete.Espacios = utileria.ConvertirValor(EspaciosTextBox.Text);
            paquete.Descripcion = DescripcionTextBox.Text;

            return paquete;
        }

        protected void NuevoBtn_Click(object sender, EventArgs e)
        {
            Limpiar();
            Utilerias2.ShowToastr(this, "Bien", "Exito al Limpiar!", "success");
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
                EliminarButton.Enabled = true;

            }else
            {
                Utilerias2.ShowToastr(this, "", "Id no encontrado", "Warning");
                Limpiar();
            }
        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Paquetes paquete = new Paquetes();
            PasarDatos(paquete);
            bool suiche = false;
            try {
                if (string.IsNullOrWhiteSpace(BuscarIdTextBox.Text))                
                    suiche = paquete.Insertar();                
                else
                    suiche = paquete.Editar();

                if (suiche)
                {
                    Utilerias2.ShowToastr(this, "", "Exito!", "success");
                    Limpiar();
                }
            } catch(Exception ex) { Utilerias2.ShowToastr(this, "Error", ex.Message, "error"); }          
        }

        protected void EliminarBtn_Click(object sender, EventArgs e)
        {
            Paquetes paquete = new Paquetes();
            Utilerias utileria = new Utilerias();
            paquete.PaqueteId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (paquete.Eliminar())
            {
                Utilerias2.ShowToastr(this, "", "Exito al eliminar", "success");
                Limpiar();
            }
            else
            {
                Utilerias2.ShowToastr(this, "Error", "Error al eliminar", "error");
            }
        }
    }
}