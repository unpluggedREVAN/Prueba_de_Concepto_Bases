﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD.Vista
{
    public partial class articulo_i : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-QJBOA1G;Initial Catalog=DefaultBase;Integrated Security=True");
        protected void Button2_Click(object sender, EventArgs e)//boton insertar
        {
            //Se asignan las variables para los atributos a insertar
            string articulo = TextBox1.Text;
            double precio = double.Parse(TextBox2.Text);
            conexion.Open();//Se abre la conexion
            SqlCommand command = new SqlCommand("Insert into Articulo values ('" + articulo + "','" + precio + "')", conexion);
            command.ExecuteNonQuery();
            conexion.Close();//Se cierra la conexion
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Insercion exitosa');", true);
            //GetListaDeArticulos();
            //Actualizar, es decir llamar al update con un store procedure 
        }

        protected void Button1_Click(object sender, EventArgs e)//boton cerrar
        {
            Response.Redirect("Default.aspx");
        }
    }
}