using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoReyes.WebForm
{
    public partial class MiCuentaAdmin : System.Web.UI.Page
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
            usuario = (Usuarios)Session["Usuarios"];

            NombreTextBox.Text = usuario.Nombre;
            NombreUsuarioTextBox.Text = usuario.NombreUsuario;
            DireccionTextBox.Text = usuario.Direccion;
            EmailTextBox.Text = usuario.Email;

        }

        protected void EditarLinkButton_Click(object sender, EventArgs e)
        {
            if (EditarLinkButton.Text == "Editar")
            {
                NombreTextBox.Enabled = true;
                NombreUsuarioTextBox.Enabled = true;
                DireccionTextBox.Enabled = true;
                EmailTextBox.Enabled = true;
                EditarLinkButton.Text = "Guardar";
            }
            else
                if (EditarLinkButton.Text == "Guardar")
            {
                Usuarios usuario = new Usuarios();
                usuario = (Usuarios)Session["Usuarios"];

                usuario.Nombre = NombreTextBox.Text;
                usuario.NombreUsuario = NombreUsuarioTextBox.Text;
                usuario.Direccion = DireccionTextBox.Text;
                usuario.Email = EmailTextBox.Text;


            }
        }
    }
}