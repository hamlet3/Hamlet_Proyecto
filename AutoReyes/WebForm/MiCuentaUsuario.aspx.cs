using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoReyes.WebForm
{
    public partial class MiCuentaUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                IniciarCampos();
            }
        }

        public void IniciarCampos()
        {
            Usuarios usuario = new Usuarios();
            DataTable dt = new DataTable();
            usuario = (Usuarios)Session["Usuarios"];

            NombreTextBox.Text = usuario.Nombre;
            NombreUsuarioTextBox.Text = usuario.NombreUsuario;
            DireccionTextBox.Text = usuario.Direccion;
            EmailTextBox.Text = usuario.Email;
            LlenarDropdownList();

            foreach (UsuarioTelefonos telefono in usuario.ListaTelefono)
            {
                GuardarLista(telefono);

            }
            TelefonoGridView.DataSource = ObtenerLista();
            TelefonoGridView.DataBind();


        }

        public void LlenarDropdownList()
        {
            TiposTelefono tipo = new TiposTelefono();
            TipoTelefonoDropDownList.DataSource = tipo.Listado("Descripcion, TipoTelefonoId", "1=1", "");
            TipoTelefonoDropDownList.DataTextField = "Descripcion";
            TipoTelefonoDropDownList.DataValueField = "TipoTelefonoId";
            TipoTelefonoDropDownList.DataBind();
            TipoTelefonoDropDownList.Items.Insert(0, "Tipo de numero");
        }

        protected void EditarLinkButton_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            if (EditarLinkButton.Text == "Editar")
            {
                NombreTextBox.Enabled = true;
                NombreUsuarioTextBox.Enabled = true;
                DireccionTextBox.Enabled = true;
                EmailTextBox.Enabled = true;
                EditarLinkButton.Text = "Guardar";
            }else
                if (EditarLinkButton.Text == "Guardar")
            {
                Usuarios usuario = new Usuarios();
                usuario=(Usuarios)Session["Usuarios"];

                usuario.Nombre=NombreTextBox.Text;
                usuario.NombreUsuario = NombreUsuarioTextBox.Text;
                usuario.Direccion = DireccionTextBox.Text;
                usuario.Email = EmailTextBox.Text;

                usuario.Editar();
            }

        }

        public List<UsuarioTelefonos> ObtenerNuevaLista()
        {
            List<UsuarioTelefonos> lista = new List<UsuarioTelefonos>();
            return lista;
        }

        public List<UsuarioTelefonos> GuardarLista(UsuarioTelefonos telefono)
        {
            if (Session["Telefonos"] == null)
            {
                List<UsuarioTelefonos> lista = ObtenerNuevaLista();
                lista.Add(telefono);
                Session["Telefonos"] = lista;
            }
            else
            {
                List<UsuarioTelefonos> lista = (List<UsuarioTelefonos>)Session["Telefonos"];
                lista.Add(telefono);
                Session["Telefonos"] = lista;
            }
            return (List<UsuarioTelefonos>)Session["Telefonos"];
        }

        public List<UsuarioTelefonos> ObtenerLista()
        {
            if (Session["Telefonos"] == null)
            {
                return ObtenerNuevaLista();
            }
            else
            {
                return (List<UsuarioTelefonos>)Session["Telefonos"];
            }
        }

        protected void AgregarButton_Click(object sender, EventArgs e)
        {
            UsuarioTelefonos telefono = new UsuarioTelefonos();
            Utilerias utileria = new Utilerias();
            Usuarios usuario;         


            usuario = (Usuarios)Session["Usuarios"];

            usuario.AgregarTelefono(TelefonoTextBox.Text, utileria.ConvertirValor(TipoTelefonoDropDownList.SelectedValue.ToString()));
            Session["Usuarios"] = usuario;
            telefono.Telefono = TelefonoTextBox.Text;
            telefono.Descripcion = TipoTelefonoDropDownList.SelectedItem.ToString();

            GuardarLista(telefono);

            TelefonoGridView.DataSource = ObtenerLista();
            TelefonoGridView.DataBind();
            TelefonoTextBox.Text = "";
            TipoTelefonoDropDownList.SelectedIndex = 0;
        }

        protected void EliminarButton_Click(object sender, EventArgs e)
        {
            TelefonoGridView.DataSource = null;
            TelefonoGridView.DataBind();

        }

    }
}