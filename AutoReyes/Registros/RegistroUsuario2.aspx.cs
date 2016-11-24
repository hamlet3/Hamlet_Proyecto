using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoReyes.Registros
{
    public partial class RegistroUsuario2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuarios"] != null)
            {
                Response.Redirect("/WebForm/Default.aspx");
            }
            
            if (!IsPostBack)
            {
                TelefonoGridVierw.DataSource = ObtenerNuevaLista();
                TelefonoGridVierw.DataBind();
                LlenarDropdownList();
            }
            
        }

        public List<UsuarioTelefonos> ObtenerNuevaLista()
        {
            List<UsuarioTelefonos> lista = new List<UsuarioTelefonos>();
     
            return lista;
        }

        public void Limpiar()
        {
            NombreUsuarioTextBox.Text = "";
            NombreCompletoTextBox.Text = "";
            EmailTextBox.Text = "";
            ContraseñaTextBox.Text = "";
            ConfirmarContraseñaTextBox.Text = "";
            DireccionTextBox.Text = "";
            Session.Clear();
            TelefonoGridVierw.DataSource = ObtenerNuevaLista();
            TelefonoGridVierw.DataBind();
            DescripcionDropDownList.SelectedIndex = 0;
            TelefonoTextBox.Text = "";

        }

        public Usuarios EnviarDatos(Usuarios usuario)
        {
            usuario.Nombre = NombreCompletoTextBox.Text;
            usuario.NombreUsuario = NombreUsuarioTextBox.Text;
            usuario.Direccion = DireccionTextBox.Text;
            usuario.Contraseña = ContraseñaTextBox.Text;
            usuario.Email = EmailTextBox.Text;
            return usuario;
        }

        public void LlenarDropdownList()
        {
            TiposTelefono tipo = new TiposTelefono();
            DescripcionDropDownList.DataSource = tipo.Listado("Descripcion, TipoTelefonoId", "1=1", "");
            DescripcionDropDownList.DataTextField = "Descripcion";
            DescripcionDropDownList.DataValueField = "TipoTelefonoId";
            DescripcionDropDownList.DataBind();
            DescripcionDropDownList.Items.Insert(0, "Tipo de numero");
        }

        public List<UsuarioTelefonos> GuardarLista(UsuarioTelefonos telefono)
        {
            if (Session["Telefono"] == null)
            {
                List<UsuarioTelefonos> lista = ObtenerNuevaLista();
                lista.Add(telefono);
                Session["Telefono"] = lista;
            }
            else
            {
                List<UsuarioTelefonos> lista = (List<UsuarioTelefonos>)Session["Telefono"];
                lista.Add(telefono);
                Session["Telefono"] = lista;
            }
            return (List<UsuarioTelefonos>)Session["Telefono"];
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

        protected void NuevoButton_Click(object sender, EventArgs e)
        {
            Limpiar();
            Utilerias2.ShowToastr(this, "", "Exito al Limpiar!", "success");
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
                Usuarios usuario;
                if (Session["Usuario"] == null)
                    Session["Usuario"] = new Usuarios();

                usuario = (Usuarios)Session["Usuario"];
                EnviarDatos(usuario);
            if (usuario.ValidarListaTelefono()) {
                bool suiche = false;
                try
                {
                    suiche = usuario.Insertar();

                    if (suiche)
                    {
                        Utilerias2.ShowToastr(this, "", "Exito!", "success");
                        Limpiar();
                    }
                } catch (Exception ex) { Utilerias2.ShowToastr(this, "Error ", ex.Message, "error"); }
            }else
                 Utilerias2.ShowToastr(this, " ","Agregue por lo menos un numero telefonico","info");
        }

        protected void AgregarButton_Click(object sender, EventArgs e)
        {
            UsuarioTelefonos telefono = new UsuarioTelefonos();
            Utilerias utileria = new Utilerias();

            Usuarios usuario;
            if (Session["Usuario"] == null)
                Session["Usuario"] = new Usuarios();

            usuario = (Usuarios)Session["Usuario"];

            usuario.AgregarTelefono(TelefonoTextBox.Text, utileria.ConvertirValor(DescripcionDropDownList.SelectedValue.ToString()));
            Session["Usuario"] = usuario;
            telefono.Telefono = TelefonoTextBox.Text;
            telefono.Descripcion = DescripcionDropDownList.SelectedItem.ToString();

            GuardarLista(telefono);

            TelefonoGridVierw.DataSource = ObtenerLista();
            TelefonoGridVierw.DataBind();
            DescripcionDropDownList.SelectedIndex = 0;
            TelefonoTextBox.Text = "";
        }

    }
}