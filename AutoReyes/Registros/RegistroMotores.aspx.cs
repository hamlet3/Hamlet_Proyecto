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

        public void Mensaje(string mensaje)
        {
            Response.Write("<script>alert('" + mensaje + "')</script>");
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
                Mensaje("Id no encontrado");
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
                    Mensaje("Exito al guardar");
                    Limpiar();
                }else
                {
                    Mensaje("Error al guardar");
                }
            }else
            {
                Utilerias utileria = new Utilerias();
                motor.MotorId = utileria.ConvertirValor(BuscarIdTextBox.Text);
                motor.Descripcion = DescripcionTextBox.Text;
                if (motor.Editar())
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

        protected void NuevoBtn_Click(object sender, EventArgs e)
        {
            Limpiar();
            Utilerias2.ShowToastr(this, "Bien", "Exito al Limpiar!", "success");
        }

        protected void EliminarBtn_Click(object sender, EventArgs e)
        {
            Motores motor = new Motores();
            Utilerias utileria = new Utilerias();
            motor.MotorId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (motor.Eliminar())
            {
                Mensaje("Exito al eliminar");
                Limpiar();
            }
            else
            {
                Utilerias2.ShowToastr(this, "Error", "Id no encontrado!", "error");
            }
        }
    }
}