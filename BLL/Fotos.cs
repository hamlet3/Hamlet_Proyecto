using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public class Fotos
    {
        public int FotoId { get; set; }
        public int VehiculoId { get; set; }
        public string Foto { get; set; }
        

        public Fotos(string foto) {
            this.Foto = foto;
        }

        public Fotos() { }
    }

}
