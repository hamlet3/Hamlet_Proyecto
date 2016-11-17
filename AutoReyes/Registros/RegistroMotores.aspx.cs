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
                Utilerias2.ShowToastr(this, "", "Id no encontrado!", "Warning");
                Limpiar();
            }
            
        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Motores motor = new Motores();
            Utilerias utileria = new Utilerias();
            motor.Descripcion = DescripcionTextBox.Text;
            bool suiche = false;
            try {
                if (string.IsNullOrWhiteSpace(BuscarIdTextBox.Text))
                {
                    if (!string.IsNullOrWhiteSpace(DescripcionTextBox.Text))
                        suiche = motor.Insertar();
                }
                else
                {
                    motor.MotorId = utileria.ConvertirValor(BuscarIdTextBox.Text);
                    suiche = motor.Editar();
                }
                if (suiche)
                {
                    Utilerias2.ShowToastr(this, "", "Exito!", "success");
                    Limpiar();
                }
            } catch ( Exception ex) { Utilerias2.ShowToastr(this, "Error",ex.Message, "error"); } 
        }

        protected void NuevoBtn_Click(object sender, EventArgs e)
        {
            Limpiar();
            Utilerias2.ShowToastr(this, "", "Exito al Limpiar!", "success");
        }

        protected void EliminarBtn_Click(object sender, EventArgs e)
        {
            Motores motor = new Motores();
            Utilerias utileria = new Utilerias();
            motor.MotorId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (motor.Eliminar())
            {
                Utilerias2.ShowToastr(this, "", "Exito al elimiar!", "success");
                Limpiar();
            }
            else
            {
                Utilerias2.ShowToastr(this, "", "Error al eliminar", "error");
                Limpiar();
            }
        }
    }
}