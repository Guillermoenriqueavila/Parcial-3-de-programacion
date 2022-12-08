using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial_III
{
    public partial class Eliminar : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; port=3306; Initial Catalog=parcial3; User Id=root; password=''");
        protected void Page_Load(object sender, EventArgs e)
        {
            String valor = Convert.ToString(Request.QueryString["key"]);

            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = ("delete from estudiantes where Id= " + valor);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Consultar.aspx");

        }
    }
}