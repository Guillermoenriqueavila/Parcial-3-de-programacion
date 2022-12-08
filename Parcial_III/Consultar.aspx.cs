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
    public partial class Consultar : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost; port=3306; Initial Catalog=parcial3; User Id=root; password=''");
        protected void Page_Load(object sender, EventArgs e)
        {
            String userPost = Session["usuario"].ToString();
            String rangoPost = Session["rango"].ToString();

            if (rangoPost != "ADM")
            {
                txtIngresar.Visible = false;
                GridView1.Visible = false;
                String carreragoPost = Session["carrera"].ToString();
                DataTable estudiantes = new DataTable();
                estudiantes.Columns.AddRange(new DataColumn[] {
                    new DataColumn("CODIGO", typeof(string)),
                    new DataColumn("NOMBRE", typeof(string)),
                    new DataColumn("CORREO", typeof(string)),
                    new DataColumn("FACULTAD", typeof(string)),
                    new DataColumn("CARRERA", typeof(string)),
                });
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = ("SELECT código, nombre, correo, facultad, carrera from estudiantes where carrera = '" + carreragoPost + "';");
                MySqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        estudiantes.Rows.Add(
                            dr["código"].ToString(),
                            dr["nombre"].ToString(),                            
                            dr["correo"].ToString(),
                            dr["facultad"].ToString(),
                            dr["carrera"].ToString()
                            );
                    }
                }

                con.Close();

                GridView2.DataSource = estudiantes;
                GridView2.DataBind();


            }
            else
            {
                GridView2.Visible = false;
                DataTable estudiantes = new DataTable();
                estudiantes.Columns.AddRange(new DataColumn[] {
                new DataColumn("ID",typeof(string)),
                new DataColumn("CODIGO",typeof(string)),
                new DataColumn("NOMBRE",typeof(string)),
                new DataColumn("USUARIO",typeof(string)),
                new DataColumn("CONTRASEÑA",typeof(string)),
                new DataColumn("RANGO",typeof(string)),
                new DataColumn("TELEFONO",typeof(string)),
                new DataColumn("CORREO",typeof(string)),
                new DataColumn("FACULTAD",typeof(string)),
                new DataColumn("CARRERA",typeof(string)),


            });


                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = ("SELECT id, código, nombre, usuario, contraseña, rango, telefono, correo, facultad, carrera from estudiantes");
                MySqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        estudiantes.Rows.Add(
                            dr["id"].ToString(),
                            dr["código"].ToString(),
                            dr["nombre"].ToString(),
                            dr["usuario"].ToString(),
                            dr["contraseña"].ToString(),
                            dr["rango"].ToString(),
                            dr["telefono"].ToString(),
                            dr["correo"].ToString(),
                            dr["facultad"].ToString(),
                            dr["carrera"].ToString()
                            );
                    }
                }

                con.Close();

                GridView1.DataSource = estudiantes;
                GridView1.DataBind();
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ELIMINAR")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                int valor = Convert.ToInt32(GridView1.DataKeys[index].Value);
                Response.Redirect("Eliminar.aspx?key=" + valor);
            }
            if (e.CommandName == "MODIFICAR")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                int valor = Convert.ToInt32(GridView1.DataKeys[index].Value);
                Response.Redirect("Modificar.aspx?key=" + valor);
            }
        }

        protected void txtCerrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("logout.aspx");
        }
    }
}