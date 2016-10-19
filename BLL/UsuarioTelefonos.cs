using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public class UsuarioTelefonos
    {
        public string Telefono { get; set; }
        public int UsuarioId { get; set; }
        public string Descripcion { get; set; }
        public int TipoTelefonoId { get; set; }

        public UsuarioTelefonos(string numero,int tipoTelefonoId)
        {
            this.Telefono = numero;
            this.TipoTelefonoId = tipoTelefonoId;
        }

        public UsuarioTelefonos(string numero, string descripcion)
        {
            this.Telefono = numero;
            this.Descripcion = descripcion;
        }

        public UsuarioTelefonos() { }
    }
}
