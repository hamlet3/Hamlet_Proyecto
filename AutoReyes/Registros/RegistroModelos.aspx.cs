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
            DescripcionTxT.Text = "";
            BuscarIdTxT.Text = "";
            MarcasDDL.SelectedIndex = 0;
        }

        public void ListaMarca()
        {
            DataTable dt = new DataTable();
            List<Marcas> lista = new List<Marcas>();
            Marcas marca = new Marcas();
            dt = marca.Listado("Descripcion, MarcaId","1=1","");
            foreach (DataRow row in dt.Rows)
            {
               MarcasDDL.Items.Insert((int)row["MarcaId"], row["Descripcion"].ToString());

            }
    
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Limpiar();           
        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Modelos modelo = new Modelos();
            if (MarcasDDL.SelectedIndex != 0)
            {
                if (BuscarIdTxT.Text == "")
                {
                    modelo.Descripcion = DescripcionTxT.Text;
                    modelo.MarcaId = MarcasDDL.SelectedIndex;
                    if (modelo.Insertar())
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
                    int aux;
                    int.TryParse(BuscarIdTxT.Text, out aux);
                    modelo.ModeloId = aux;
                    modelo.Descripcion = DescripcionTxT.Text;
                    modelo.MarcaId = MarcasDDL.SelectedIndex;
                    if (modelo.Editar())
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
            else
            {
                Response.Write("<script>alert('Seleccione una marca')</script>");
            }
        }

        protected void EliminarBtn_Click(object sender, EventArgs e)
        {
            int aux;
            Modelos modelo = new Modelos();
            int.TryParse(BuscarIdTxT.Text, out aux);
            modelo.ModeloId = aux;
            if (modelo.Eliminar())
            {
                Response.Write("<script>alert('Se a eliminado correctament')</script>");
                Limpiar();
            }
            else
            {
                Response.Write("<script>alert('Error al eliminar')</script>");
            }
        }

        protected void BuscarIdBtn_Click(object sender, EventArgs e)
        {
            int aux;
            int.TryParse(BuscarIdTxT.Text, out aux);
            Modelos modelo = new Modelos();
            if (modelo.Buscar(aux))
            {
                DescripcionTxT.Text = modelo.Descripcion;
                MarcasDDL.SelectedIndex = modelo.MarcaId;
            }
            else
            {
                Response.Write("<script>alert('Error al buscar los datos')</script>");
            }
        }
    }
}