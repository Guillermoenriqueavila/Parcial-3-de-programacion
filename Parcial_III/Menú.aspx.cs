using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial_III
{
    public partial class Menú : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //String user = Convert.ToString(Request.QueryString["user"]);
            //String rango = Convert.ToString(Request.QueryString["rango"]);
            String userPost = Session["usuario"].ToString();
            String rangoPost  = Session["rango"].ToString();

            userlog.Text =  userPost;  
            if(rangoPost == "ADM")
            {
                rangolog.Text = "Administrador";
            }
            else if(rangoPost == "USR")
            {
                rangolog.Text = "Estudiante";
            }
            else
            {
                rangolog.Text = "";
            }


            if (rangoPost != "ADM")
            {
                txtIngresar.Visible = false; 
            }
        }

        protected void txtIngresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }

        protected void txtConsultar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Consultar.aspx");
        }

        protected void txtCerrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("logout.aspx");
        }
    }
}