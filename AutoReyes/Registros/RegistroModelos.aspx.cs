using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoReyes
{
    public partial class RegistroModelos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListarMarca();
            }
        }

        public void Limpiar() {
            DescripcionTextBox.Text = "";
            BuscarIdTextBox.Text = "";
            MarcasDropDownList.SelectedIndex = 0;
        }

        public void Mensaje(string mensaje)
        {         
            Response.Write("<script>alert('" + mensaje + "')</script>");
        }
        public void ListarMarca()
        {

            Utilerias utileria = new Utilerias();
            MarcasDropDownList.DataSource = utileria.ListarMarcas();
            MarcasDropDownList.DataTextField = "Descripcion";
            MarcasDropDownList.DataValueField = "MarcaId";
            MarcasDropDownList.DataBind();
            MarcasDropDownList.Items.Insert(0, "Eliga una marca");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Limpiar();           
        }


        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Modelos modelo = new Modelos();
            Utilerias utileria = new Utilerias();

            modelo.Descripcion = DescripcionTextBox.Text;
            modelo.MarcaId = utileria.ConvertirValor(MarcasDropDownList.SelectedValue);
            if (MarcasDropDownList.SelectedIndex != 0)
            {
                if (BuscarIdTextBox.Text == "")
                {
                    if (modelo.Insertar())
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
                   
                    modelo.ModeloId = utileria.ConvertirValor(BuscarIdTextBox.Text);
                    if (modelo.Editar())
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
            else
            {
                Mensaje("Seleccione una marca");
            }
        }

        protected void EliminarBtn_Click(object sender, EventArgs e)
        {
            Modelos modelo = new Modelos();
            Utilerias utileria = new Utilerias();
            modelo.ModeloId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (modelo.Eliminar())
            {
                Mensaje("Exito al eliminar");
                Limpiar();
            }
            else
            {
                Mensaje("Error al eliminar");
            }
        }

        protected void BuscarIdBtn_Click(object sender, EventArgs e)
        {
            Modelos modelo = new Modelos();
            Utilerias utileria = new Utilerias();
            modelo.ModeloId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (modelo.Buscar(modelo.ModeloId))
            {
                DescripcionTextBox.Text = modelo.Descripcion;
                MarcasDropDownList.SelectedIndex = modelo.MarcaId;
            }
            else
            {
                Mensaje("Id no encontrado");
            }
        }
    }
}