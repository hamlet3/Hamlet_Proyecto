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
                Response.Write("<script>alert('Id no encontrado')</script>");
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
                paquete.PaqueteId = utileria.ConvertirValor(BuscarIdTextBox.Text);
                paquete.Descripcion = DescripcionTextBox.Text;
                paquete.Costo = utileria.ConvertirValor(CostoTextBox.Text);
                paquete.Espacios = utileria.ConvertirValor(EspaciosTextBox.Text);
                if (paquete.Editar())
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
            Paquetes paquete = new Paquetes();
            Utilerias utileria = new Utilerias();
            paquete.PaqueteId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (paquete.Eliminar())
            {
                Response.Write("<script>alert('Sea eliminado correctamente')</script>");
                Limpiar();
            }
            else
            {
                Response.Write("<script>alert('Error al Eliminar')</script>");
            }
        }
    }
}