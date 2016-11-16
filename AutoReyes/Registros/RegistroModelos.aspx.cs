﻿using BLL;
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
            EliminarButton.Enabled = false;
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
            Utilerias2.ShowToastr(this, "", "Exito al Limpiar", "success");
        }


        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            Modelos modelo = new Modelos();
            Utilerias utileria = new Utilerias();
            modelo.Descripcion = DescripcionTextBox.Text;
            modelo.MarcaId = utileria.ConvertirValor(MarcasDropDownList.SelectedValue);
            bool suiche = false;

            if (MarcasDropDownList.SelectedIndex != 0)
            {
                try {

                    if (string.IsNullOrWhiteSpace(BuscarIdTextBox.Text))
                    {
                        if (!string.IsNullOrWhiteSpace(DescripcionTextBox.Text))
                            suiche = modelo.Insertar();
                    }
                    else
                    {
                        modelo.ModeloId = utileria.ConvertirValor(BuscarIdTextBox.Text);
                        suiche = modelo.Editar();
                    }
                    if (suiche)
                    {
                        Utilerias2.ShowToastr(this, "", "Exito!", "success");
                        Limpiar();
                    }
                } catch(Exception ex) { Utilerias2.ShowToastr(this, "Error ",ex.Message, "error"); }
            }
            else
            {
                Utilerias2.ShowToastr(this, "", "Seleccione una marca", "info");
            }
        }

        protected void EliminarBtn_Click(object sender, EventArgs e)
        {
            Modelos modelo = new Modelos();
            Utilerias utileria = new Utilerias();
            modelo.ModeloId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (modelo.Eliminar())
            {
                Utilerias2.ShowToastr(this, "", "Exito al eliminar", "success");
                Limpiar();
            }
            else
                Utilerias2.ShowToastr(this, "Error", "Error al eliminar", "error");
            }

        protected void BuscarIdBtn_Click(object sender, EventArgs e)
        {
            Modelos modelo = new Modelos();
            Utilerias utileria = new Utilerias();
            modelo.ModeloId = utileria.ConvertirValor(BuscarIdTextBox.Text);
            if (modelo.Buscar(modelo.ModeloId))
            {
                DescripcionTextBox.Text = modelo.Descripcion;
                MarcasDropDownList.SelectedValue = modelo.MarcaId.ToString();
                EliminarButton.Enabled = true;
            }
            else
            {
                Utilerias2.ShowToastr(this, "", "Id no encontrado", "Warning");
                Limpiar();
            }
        }
    }
}