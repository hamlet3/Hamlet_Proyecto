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
            DescripcionTextBox.Text = "";
            BuscarIdTextBox.Text = "";
        }

        protected void BuscarIdBtn_Click(object sender, EventArgs e)
        {
            Motores motor = new Motores();
            Utilerias utileria = new Utilerias();
            motor.MotorId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (motor.Buscar(motor.MotorId))
            {
                DescripcionTextBox.Text = motor.Descripcion;
            }
            else
            {
                Response.Write("<script>alert('Id no encontrado')</script>");
            }
            
        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Motores motor = new Motores();
            if (BuscarIdTextBox.Text == "")
            {
                motor.Descripcion = DescripcionTextBox.Text;
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
                Utilerias utileria = new Utilerias();
                motor.MotorId = utileria.ConvertirValor(BuscarIdTextBox.Text);
                motor.Descripcion = DescripcionTextBox.Text;
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
            Motores motor = new Motores();
            Utilerias utileria = new Utilerias();
            motor.MotorId = utileria.ConvertirValor(BuscarIdTextBox.Text);
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