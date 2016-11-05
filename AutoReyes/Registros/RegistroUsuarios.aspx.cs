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

            if (!Page.IsPostBack)
            {
                TelefonoGridVierw.DataSource= ObtenerNuevaLista();
                TelefonoGridVierw.DataBind();

                DropDownList DescripcionDropDownList = (DropDownList)TelefonoGridVierw.FooterRow.FindControl("DescripcionDropDownList");
                dt = tipo.Listado("Descripcion", "1=1", "ORDER BY Descripcion");
                foreach (DataRow row in dt.Rows)
                {
                    DescripcionDropDownList.Items.Add(row["Descripcion"].ToString());
                }
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
            TelefonoGridVierw.DataSource = ObtenerNuevaLista();
            TelefonoGridVierw.DataBind();
        }

        public void ObtenerDatos(int id) {
            
            Usuarios usuario = new Usuarios();
            usuario.Buscar(id);
            NombreTextBox.Text = usuario.Nombre;
            NombreUsuarioTextBox.Text = usuario.NombreUsuario;
            DireccionTextBox.Text = usuario.Direccion;
            EmailTextBox.Text = usuario.Direccion;
            ConfContraseñaTextBox.Text = usuario.Contraseña;
            ContraseñaTextBox.Text = usuario.Contraseña;

            foreach (UsuarioTelefonos telefono in usuario.ListaTelefono)
            {
                GuardarLista(telefono);
                
            }
            TelefonoGridVierw.DataSource = ObtenerLista();
            TelefonoGridVierw.DataBind();
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
            if (PrioridadDropDownList.SelectedIndex != 0)
            {
                Usuarios usuario;
                if (Session["Usuario"] == null)
                    Session["Usuario"] = new Usuarios();

                usuario = (Usuarios)Session["Usuario"];

                usuario.Nombre = NombreTextBox.Text;
                usuario.NombreUsuario = NombreUsuarioTextBox.Text;
                usuario.Direccion = DireccionTextBox.Text;
                usuario.Contraseña = ContraseñaTextBox.Text;
                usuario.Email = EmailTextBox.Text;
                usuario.Prioridad = PrioridadDropDownList.SelectedIndex;
                if (usuario.Insertar())
                {
                    Response.Write("<script>alert('Se a guardado correctamente')</script>");
                    Limpiar();
                }
            }else
            {
                Response.Write("<script>alert('Seleccione el nivel Prioridad')</script>");
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
                Response.Write("<script>alert('Se a eliminado correctamente')</script>");
            }
            else
            {
                Response.Write("<script>alert('Error al aliminar')</script>");
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
            int aux;
            int.TryParse(BuscarIdTextBox.Text, out aux);
            ObtenerDatos(aux);
        }
    }
}