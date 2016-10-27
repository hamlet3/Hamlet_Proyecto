using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoReyes
{
    public partial class RegistroMotores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BuscarIdTxT_TextChanged(object sender, EventArgs e)
        {

        }

        public void Limpiar()
        {
            DescripcionTxT.Text = "";
            BuscarIdTxT.Text = "";
        }

        protected void BuscarIdBtn_Click(object sender, EventArgs e)
        {
            int aux;
            Motores motor = new Motores();
            int.TryParse(BuscarIdTxT.Text, out aux);
            motor.Buscar(aux);
            DescripcionTxT.Text = motor.Descripcion;
            
        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Motores motor = new Motores();
            if (BuscarIdTxT.Text == "")
            {
                motor.Descripcion = DescripcionTxT.Text;
                if (motor.Insertar())
                {
                    Response.Write("<script>alert('Se a guardado correctamente')</script>");
                    Limpiar();
                }else
                {
                    Response.Write("<script>alert('Error al guardar')</script>");
                }
            }else
            {
                int aux;
                int.TryParse(BuscarIdTxT.Text, out aux);
                motor.MotorId = aux;
                motor.Descripcion = DescripcionTxT.Text;
                if (motor.Editar())
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

        protected void NuevoBtn_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void EliminarBtn_Click(object sender, EventArgs e)
        {
            int aux;
            Motores motor = new Motores();
            int.TryParse(BuscarIdTxT.Text, out aux);
            motor.MotorId = aux;
            if (motor.Eliminar())
            {
                Response.Write("<script>alert('Se a eliminaro correctamente')</script>");
                Limpiar();
            }
            else
            {
                Response.Write("<script>alert('Error al eliminar')</script>");
            }
        }
    }
}