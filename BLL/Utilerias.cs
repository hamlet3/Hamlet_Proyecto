using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BLL;
using System.Data;
using System.Threading.Tasks;
using System.Text.RegularExpressions;
using System.Globalization;
using System.Web.UI;

namespace BLL
{
    public class Utilerias
    {
        public  int ConvertirValor(string convertir)
        {
            int aux;
            int.TryParse(convertir, out aux);
            return aux;

        }

        public  DataTable ListarMarcas()
        {
            DataTable dt = new DataTable();
            Marcas marca = new Marcas();

            return marca.Listado("Descripcion, MarcaId", "1=1", ""); ;
        }

        public DataTable ListarModelos(int MarcaId)
        {
            DataTable dt = new DataTable();
            Modelos modelo = new Modelos();
            
           
            return modelo.Listado(" M.Descripcion, M.ModeloId ", " Ma.MarcaId= " + MarcaId, ""); ;
        }
       

        public DataTable ListarTransmisiones()
        {
            DataTable dt = new DataTable();
            Transmisiones transmision = new Transmisiones();
       
            return transmision.Listado("Descripcion, TransmisionId", "1=1", ""); ;
        }

        public DataTable ListarColores()
        {
            DataTable dt = new DataTable();
            Colores color = new Colores();
            
            return color.Listado("Descripcion, ColorId", "1=1", ""); ;
        }

        public DataTable ListarMotores()
        {
            DataTable dt = new DataTable();
            Motores motor = new Motores();
            
            return motor.Listado("Descripcion, MotorId", "1=1", ""); ;
        }
    }
}
