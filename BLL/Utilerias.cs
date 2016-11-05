using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BLL;

namespace BLL
{
    public class Utilerias
    {
        public int ConvertirValor(string convertir)
        {
            int aux;
            int.TryParse(convertir, out aux);
            return aux;
        }
    }
}
