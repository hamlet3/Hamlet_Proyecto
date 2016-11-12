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
            NombreUsuarioTextBox.Text = "";
            NombreTextBox.Text = "";
            EmailTextBox.Text = "";
            ContraseñaTextBox.Text = "";
            ConfContraseñaTextBox.Text = "";
            DireccionTextBox.Text = "";
            Session.Clear();
            TelefonoGridVierw.DataSource = ObtenerNuevaLista();
            TelefonoGridVierw.DataBind();
        }

        public void LlenarDropdownList()
        {
            TiposTelefono tipo = new TiposTelefono();
            DataTable dt = new DataTable();
            DropDownList DescripcionDropDownList = (DropDownList)TelefonoGridVierw.FooterRow.FindControl("DescripcionDropDownList");
            dt = tipo.Listado("Descripcion, TipoTelefonoId", "1=1", "");
            foreach (DataRow row in dt.Rows)
            {
                DescripcionDropDownList.Items.Insert((int)row["TipoTelefonoId"], row["Descripcion"].ToString());
            }
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
                EmailTextBox.Text = usuario.Direccion;
                ConfContraseñaTextBox.Text = usuario.Contraseña;
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
                Mensaje("Id no encontrado");
            }
        }

        public Usuarios EnviarDatos()
        {
            Usuarios usuario = new Usuarios();
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

        protected void GvTelefono_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            if (e.CommandName.Equals("Agregar"))
            {
                TextBox TelefonoTextBox = (TextBox)TelefonoGridVierw.FooterRow.FindControl("TelefonoTextBox");
                DropDownList DescripcionDropDownList = (DropDownList)TelefonoGridVierw.FooterRow.FindControl("DescripcionDropDownList");
                int tipo;
                UsuarioTelefonos telefono = new UsuarioTelefonos();

                Usuarios usuario;
                if (Session["Usuario"] == null)
                    Session["Usuario"] = new Usuarios();

                usuario = (Usuarios)Session["Usuario"];


                tipo = DescripcionDropDownList.SelectedIndex;
                

                usuario.AgregarTelefono(TelefonoTextBox.Text, tipo);
                Session["Usuario"] = usuario;
                telefono.Telefono = TelefonoTextBox.Text;
                telefono.Descripcion = DescripcionDropDownList.Text;

                GuardarLista(telefono);

                TelefonoGridVierw.DataSource = ObtenerLista();
                TelefonoGridVierw.DataBind();
            }
        }


        protected void NuevoBtn_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            if (PrioridadDropDownList.SelectedIndex != 0)
            {
                Usuarios usuario;
                if (Session["Usuario"] == null)
                    Session["Usuario"] = new Usuarios();

                usuario = (Usuarios)Session["Usuario"];
                usuario = EnviarDatos();

                if (usuario.Insertar())
                {
                    Mensaje("Exito al guardar");
                    Limpiar();
                }
            }else
            {
                Mensaje("Seleccione nivel de prioridad");
            }
        }

        protected void EliminarBtn_Click(object sender, EventArgs e)
        {
            Usuarios usuario = new Usuarios();
            Utilerias utileria = new Utilerias();
            usuario.UsuarioId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (usuario.Eliminar())
            {
                Limpiar();
                Mensaje("Exito al eliminar");
            }
            else
            {
                Mensaje("Error al eliminar");
            }
        }

        protected void DescripcionDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BuscarBtn_Click(object sender, EventArgs e)
        {
                Utilerias utileria = new Utilerias();
                ObtenerDatos(utileria.ConvertirValor(BuscarIdTextBox.Text));
            
        }
    }
}