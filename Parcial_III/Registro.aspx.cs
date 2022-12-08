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
    public partial class Registro : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; port=3306; Initial Catalog=parcial3; User Id=root; password=''");
        ListItem i;
        ListItem carreras;
        string ddCarrer;
        string ddList;
        ListItem rangos;
        protected void Page_Load(object sender, EventArgs e)
        {
            String userPost = Session["usuario"].ToString();
            String rangoPost = Session["rango"].ToString();

            if(rangoPost != "ADM")
            {
                Response.Redirect("Menú.aspx");
            }

            ddListaCargar();
            ddCarreraCargar();
            if(ddRango.Items.Count != 2)
            {
                rangos = new ListItem("ADM", "ADM");
                ddRango.Items.Add(rangos);

                rangos = new ListItem("USR", "USR");
                ddRango.Items.Add(rangos);
            }
            


        }
        private void ddCarreraCargar() {
            if (ddCarrera.Items.Count == 5 || ddCarrera.Items.Count == 3)
            {
                ddCarrer = ddCarrera.SelectedValue;
            }
            else
            {
                validar();
            }
        }
        private void ddListaCargar()
        {
            if (ddLista.Items.Count == 3)
            {
                ddList = ddLista.SelectedValue;
            }
            else
            {
                //facultades
                i = new ListItem("Facultad de Ciencia y Tecnología", "Facultad de Ciencia y Tecnología");
                ddLista.Items.Add(i);

                i = new ListItem("Ciencias de la Salud", "Ciencias de la Salud");
                ddLista.Items.Add(i);

                i = new ListItem("No aplica", "No aplica");
                ddLista.Items.Add(i);

                ddList = ddLista.SelectedValue;
            }

            validar();
        }
        private void validar()
        {
            if (ddList.Equals("Facultad de Ciencia y Tecnología"))
            {
                //carreras- ciencia y tecnologia
                if (ddCarrera.Items.Count == 5)
                {
                    ddCarrer = ddCarrera.SelectedValue;
                }
                else
                {
                    ddCarrera.Items.Clear();
                    carreras = new ListItem("Ing. en Gestion y Manejo de Bases de Datos", "Ingeniería en Gestion y Manejo de Bases de Datos");
                    ddCarrera.Items.Add(carreras);

                    carreras = new ListItem("Ing. en Sistemas y Redes Informáticas (Semipresencial)", "Ingeniería en Sistemas y Redes Informáticas (Semipresencial) ");
                    ddCarrera.Items.Add(carreras);


                    carreras = new ListItem("Ing. en Sistemas y Redes Informáticas (Virtual)", "Ingeniería en Sistemas y Redes Informáticas (Virtual)");
                    ddCarrera.Items.Add(carreras);

                    carreras = new ListItem("Téc. en Ingeniería en Sistemas y Redes Informáticas", "Técnico en Ingeniería en Sistemas y Redes Informáticas");
                    ddCarrera.Items.Add(carreras);

                    carreras = new ListItem("Téc. en Ingeniería en Sistemas y Redes Informáticas (Virtual)", "Técnico en Ingeniería en Sistemas y Redes Informáticas (Virtual)");
                    ddCarrera.Items.Add(carreras);
                    ddCarrer = ddCarrera.SelectedValue;

                }

            }
            if (ddList.Equals("Ciencias de la Salud"))
            {
                //ciencias de la salud
                if (ddCarrera.Items.Count == 3)
                {
                    ddCarrer = ddCarrera.SelectedValue;
                }
                else
                {
                    ddCarrera.Items.Clear();
                    carreras = new ListItem("Doctorado en Medicina", "Doctorado en Medicina");
                    ddCarrera.Items.Add(carreras);

                    carreras = new ListItem("Lic. en Enfermería", "Licenciatura en Enfermería");
                    ddCarrera.Items.Add(carreras);

                    carreras = new ListItem("Téc. en Enfermería", "Técnico en Enfermería");
                    ddCarrera.Items.Add(carreras);
                    ddCarrer = ddCarrera.SelectedValue;
                }

            }
            if (ddList.Equals("No aplica"))
            {
                //Administrador
                if (ddCarrera.Items.Count == 1)
                {
                    ddCarrer = ddCarrera.SelectedValue;
                }
                else
                {
                    ddCarrera.Items.Clear();
                    carreras = new ListItem("No aplica", "No aplica");
                    ddCarrera.Items.Add(carreras);
                    ddCarrer = ddCarrera.SelectedValue;
                }

            }
        }
        protected void txtConsultar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Consultar.aspx");
        }

        protected void txtIngresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO estudiantes(código, nombre, usuario, contraseña, rango, telefono, correo, facultad, carrera) values ('" + txtCodigo.Text + "','" + txtNombre.Text + "','" + txtUsuario.Text + "','" + txtContrasenna.Text + "','" + ddRango.Text + "','" + txtTelefono.Text + "','" + txtCorreo.Text + "','" + ddLista.Text + "','" + ddCarrera.Text + "')";

            cmd.ExecuteNonQuery();


            con.Close();
            Response.Redirect("Consultar.aspx");
        }

        protected void ddLista_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void ddLista_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void txtCerrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("logout.aspx");
        }
    }
}