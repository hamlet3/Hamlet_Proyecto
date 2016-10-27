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
            BuscarIdTxT.Text = "";
            EspaciosTxT.Text = "";
            CostoTxT.Text = "";
            DescripcionTxT.Text = "";
            
        }

        public int ConvertirEntero(string convertir) {
            int aux;
            int.TryParse(convertir, out aux);
            return aux;
        }

        protected void NuevoBtn_Click(object sender, EventArgs e)
        {
            Limpiar();
        }
        
       

        protected void BuscarIdBtn_Click(object sender, EventArgs e)
        {
            Paquetes paquete = new Paquetes();
            paquete.PaqueteId = ConvertirEntero(BuscarIdTxT.Text);
            if (paquete.Buscar(paquete.PaqueteId))
            {
                DescripcionTxT.Text = paquete.Descripcion;
                CostoTxT.Text = paquete.Costo.ToString();
                EspaciosTxT.Text = paquete.Espacios.ToString();

            }else
            {
                Response.Write("<script>alert('Id no encontrado')</script>");
            }
        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Paquetes paquete = new Paquetes();
            if (BuscarIdTxT.Text == "")
            {
                paquete.Descripcion = DescripcionTxT.Text;
                paquete.Costo = ConvertirEntero(CostoTxT.Text);
                paquete.Espacios = ConvertirEntero(EspaciosTxT.Text);
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
                paquete.PaqueteId = ConvertirEntero(BuscarIdTxT.Text);
                paquete.Descripcion = DescripcionTxT.Text;
                paquete.Costo = ConvertirEntero(CostoTxT.Text);
                paquete.Espacios = ConvertirEntero(EspaciosTxT.Text);
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
            paquete.PaqueteId = ConvertirEntero(BuscarIdTxT.Text);
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