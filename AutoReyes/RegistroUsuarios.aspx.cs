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
    public partial class RegistroUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TiposTelefono tipo = new TiposTelefono();
            DataTable dt = new DataTable();

            if (!IsPostBack)
            {
                GvTelefono.DataSource= ObtenerNuevaLista();
                GvTelefono.DataBind();
                
            }
            
                DropDownList DescripcionDDL = (DropDownList)GvTelefono.FooterRow.FindControl("DescripcionDDl");
                dt=tipo.Listado("Descripcion", "1=1", "ORDER BY Descripcion");
                foreach(DataRow row in dt.Rows)
                {
                    DescripcionDDL.Items.Add(row["Descripcion"].ToString());
                }
        }
        public List<UsuarioTelefonos> ObtenerNuevaLista()
        {
            List<UsuarioTelefonos> lista = new List<UsuarioTelefonos>();
            UsuarioTelefonos telefono = new UsuarioTelefonos();

            lista.Add(telefono);
            return lista;
        }

        public void Limpiar()
        {
            NombreUsuariotxt.Text = "";
            Nombretxt.Text = "";
            Emailtxt.Text = "";
            Contraseñatxt.Text = "";
            ConfContraseñatxt.Text = "";
            Direcciontxt.Text = "";
            GvTelefono.DataSource = ObtenerNuevaLista();
            GvTelefono.DataBind();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        public List<UsuarioTelefonos> GuardarLista(UsuarioTelefonos telefono)
        {
            if (Session["Telefono"] == null)
            {
                List<UsuarioTelefonos> lista = ObtenerNuevaLista();
                lista.Add(telefono);
                Session["Telefono"] = lista;
            }else
            {
                List<UsuarioTelefonos> lista = (List<UsuarioTelefonos>)Session["Telefono"];
                lista.Add(telefono);
                Session["Telefono"] = lista;
            }
            return (List < UsuarioTelefonos >) Session["Telefono"];
        }
        
        public List<UsuarioTelefonos> ObtenerLista()
        {
            if (Session["Telefono"] == null)
            {
                return ObtenerNuevaLista();
            }
            else
            {
                return (List<UsuarioTelefonos>)Session["Telefono"];
            }
        }

        protected void GvTelefono_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            if (e.CommandName.Equals("Agregar"))
            {
                TextBox Telefonotxt = (TextBox)GvTelefono.FooterRow.FindControl("Telefonotxt");
                DropDownList DescripcionDDL = (DropDownList)GvTelefono.FooterRow.FindControl("DescripcionDDl");
                int tipo;
                UsuarioTelefonos telefono = new UsuarioTelefonos();

                Usuarios usuario;
                if (Session["Usuario"] == null)
                    Session["Usuario"] = new Usuarios();

                usuario = (Usuarios)Session["Usuario"];


                tipo = DescripcionDDL.SelectedIndex;
                

                usuario.AgregarTelefono(Telefonotxt.Text, tipo);
                Session["Usuario"] = usuario;
                telefono.Telefono = Telefonotxt.Text;
                telefono.Descripcion = DescripcionDDL.Text;

                GuardarLista(telefono);

                GvTelefono.DataSource = ObtenerLista();
                GvTelefono.DataBind();
            }
        }

        protected void GvTelefono_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       protected void AgregarLBtn_Click(object sender, EventArgs e)
        {

        }

        protected void NuevoBtn_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Usuarios usuario;
            if (Session["Usuario"] == null)
                Session["Usuario"] = new Usuarios();

            usuario = (Usuarios)Session["Usuario"];

            usuario.Nombre = Nombretxt.Text;
            usuario.NombreUsuario = NombreUsuariotxt.Text;
            usuario.Direccion = Direcciontxt.Text;
            usuario.Contraseña = Contraseñatxt.Text;
            usuario.Email = Emailtxt.Text;
            usuario.Prioridad = 1;

            if (usuario.Insertar())
            {
                Limpiar();
            }
        }

        protected void EliminarBtn_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            if (usuario.Eliminar())
            {
                Limpiar();
            }
        }

        protected void DescripcionDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
    }
}