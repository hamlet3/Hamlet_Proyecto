using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoReyes.Registros
{
    public partial class RegistroMarcas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        public void Limpiar()
        {
            DescripcionTextBox.Text = "";
            BuscarIdTextBox.Text = "";
        }

        protected void NuevoBtn_Click(object sender, EventArgs e)
        {
            Limpiar();
            Utilerias2.ShowToastr(this, "", "Exito al Limpiar!", "success");
        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Marcas marca = new Marcas();
            Utilerias utileria = new Utilerias();
            marca.Descripcion = DescripcionTextBox.Text;
            marca.MarcaId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            bool suiche = false;

            try {
                if (string.IsNullOrWhiteSpace(BuscarIdTextBox.Text))
                    suiche = marca.Insertar();
                else
                    suiche = marca.Editar();
                if (suiche)
                {
                    Utilerias2.ShowToastr(this, "", "Exito!", "success");
                    Limpiar();
                }
            } catch (Exception ex) { Utilerias2.ShowToastr(this, "", "Error! \n"+ex.Message, "success"); }
            
        }

        protected void EliminarBtn_Click(object sender, EventArgs e)
        {
            Marcas marca = new Marcas();
            Utilerias utileria = new Utilerias();
            marca.MarcaId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (marca.Eliminar()) {
                Utilerias2.ShowToastr(this, "", "Exito al Eliminar!", "success");
                Limpiar();
            } else {
                Utilerias2.ShowToastr(this, "Error", "Error al eliminar!", "error");
            }
        }

        protected void BuscarIdBtn_Click(object sender, EventArgs e)
        {
            Marcas marca = new Marcas();
            Utilerias utileria = new Utilerias();
            marca.MarcaId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (marca.Buscar(marca.MarcaId))
            {
                DescripcionTextBox.Text = marca.Descripcion;
            }
            else
            {
                Utilerias2.ShowToastr(this, "", "Id no encontrado!", "Warning");
            }
        }
    }
}