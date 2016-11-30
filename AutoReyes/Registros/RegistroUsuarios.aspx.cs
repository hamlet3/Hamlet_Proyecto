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
            if (!IsPostBack){
                TelefonoGridVierw.DataSource= ObtenerNuevaLista();
                TelefonoGridVierw.DataBind();
                LlenarDropdownList();
                if (Session["Usuarios"] != null)
                {
                    Usuarios usuario = new Usuarios();
                    usuario = (Usuarios)Session["Usuarios"];
                    if (usuario.Prioridad != 1)
                        Response.Redirect("/WebForm/Default.aspx");
                }
                else
                    Response.Redirect("/WebForm/Login.aspx");
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
            NombreTextBox.Text = "";
            EmailTextBox.Text = "";
            ContraseñaTextBox.Text = "";
            ConfirmarContraseñaTextBox.Text = "";
            DireccionTextBox.Text = "";
            PrioridadDropDownList.SelectedIndex = 0;     
            TelefonoGridVierw.DataSource = ObtenerNuevaLista();
            TelefonoGridVierw.DataBind();
            TelefonoTextBox.Text = "";
            DescripcionDropDownList.SelectedIndex = 0;
        }

        public void LlenarDropdownList()
        {
            TiposTelefono tipo = new TiposTelefono();
            DescripcionDropDownList.DataSource = tipo.Listado("Descripcion, TipoTelefonoId", "1=1","");
            DescripcionDropDownList.DataTextField = "Descripcion";
            DescripcionDropDownList.DataValueField = "TipoTelefonoId";
            DescripcionDropDownList.DataBind();
            DescripcionDropDownList.Items.Insert(0, "Tipo de numero");
        }

        public void Mensaje(string mensaje) {
            Response.Write("<script>alert('"+mensaje+"')</script>");
        }

        public void ObtenerDatos(int id) {
            
            Usuarios usuario = new Usuarios();
            if (usuario.Buscar(id)) {
                NombreTextBox.Text = usuario.Nombre;
                NombreUsuarioTextBox.Text = usuario.NombreUsuario;
                DireccionTextBox.Text = usuario.Direccion;
                EmailTextBox.Text = usuario.Email;
                ConfirmarContraseñaTextBox.Text = usuario.Contraseña;
                ContraseñaTextBox.Text = usuario.Contraseña;
                PrioridadDropDownList.SelectedIndex = usuario.Prioridad;

           

                foreach (UsuarioTelefonos telefono in usuario.ListaTelefono)
                {
                    GuardarLista(telefono);

                }
                TelefonoGridVierw.DataSource = ObtenerLista();
                TelefonoGridVierw.DataBind();
            }else
            {
                Utilerias2.ShowToastr(this, "", "Id no encontrado", "Warning");
            }
        }

        public Usuarios EnviarDatos(Usuarios usuario)
        {
            Utilerias utileria = new Utilerias();
            usuario.UsuarioId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            usuario.Nombre = NombreTextBox.Text;
            usuario.NombreUsuario = NombreUsuarioTextBox.Text;
            usuario.Direccion = DireccionTextBox.Text;
            usuario.Contraseña = ContraseñaTextBox.Text;
            usuario.Email = EmailTextBox.Text;
            usuario.Prioridad = PrioridadDropDownList.SelectedIndex;
            return usuario;
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


        protected void NuevoBtn_Click(object sender, EventArgs e)
        {
            Limpiar();
            Utilerias2.ShowToastr(this, "", "Exito al Limpiar!", "success");
        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Usuarios usuario;
            if (Session["Usuario"] == null)
                Session["Usuario"] = new Usuarios();

            usuario = (Usuarios)Session["Usuario"];
            EnviarDatos(usuario);
            if (usuario.ValidarListaTelefono())
            {


                bool suiche = false;
               
                    if (string.IsNullOrWhiteSpace(BuscarIdTextBox.Text))
                        suiche = usuario.Insertar();
                    else
                        suiche = usuario.Editar();

                    if (suiche)
                    {
                        Utilerias2.ShowToastr(this, "", "Exito!", "success");
                        Limpiar();
                    }

 
            }else
                Utilerias2.ShowToastr(this, "", "Agregue por lo menos un numero telefonico", "info");
        }

        protected void EliminarBtn_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            Utilerias utileria = new Utilerias();
            bool suiche = false;
            usuario.Buscar(utileria.ConvertirValor(BuscarIdTextBox.Text));

            if (suiche)
            {
                if (usuario.Eliminar())
                {
                    Limpiar();
                    Utilerias2.ShowToastr(this, "", "Exito al eliminar", "success");
                }
                else
                {
                    Utilerias2.ShowToastr(this, "Error", "Error al eliminar", "error");
                }
            }else
                Utilerias2.ShowToastr(this, "", "Este id no existe", "Warning");
        }

        protected void DescripcionDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void BuscarBtn_Click(object sender, EventArgs e)
        {
            Utilerias utileria = new Utilerias();
            Limpiar();
            ObtenerDatos(utileria.ConvertirValor(BuscarIdTextBox.Text));
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

        protected void ContraseñaTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void NombreTextBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}