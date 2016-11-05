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
                ListaMarca();
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
        public void ListaMarca()
        {
            DataTable dt = new DataTable();
            Marcas marca = new Marcas();
            dt = marca.Listado("Descripcion, MarcaId","1=1","");
            foreach (DataRow row in dt.Rows)
            {
               MarcasDropDownList.Items.Insert((int)row["MarcaId"], row["Descripcion"].ToString());
            }   
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Limpiar();           
        }


        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Modelos modelo = new Modelos();
            modelo.Descripcion = DescripcionTextBox.Text;
            modelo.MarcaId = MarcasDropDownList.SelectedIndex;
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
                    Utilerias utileria = new Utilerias();
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