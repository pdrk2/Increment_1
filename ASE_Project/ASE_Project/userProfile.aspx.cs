﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace ASE_Project
{
    public partial class user_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();
            string[] b = new string[10];
            string main_name = Session["main_name"].ToString();
            SqlCommand cmd = new SqlCommand("select * from registration where name='" + main_name + "' ", conn);
            SqlDataReader r = cmd.ExecuteReader();

       
        while (r.Read())
        {
            name.Text = r["name"].ToString();
            contact.Text = r["contactno"].ToString();
            zipcode.Text = r["zipcode"].ToString();
            email.Text = r["email"].ToString();
      
        }
        cmd.Dispose();
        conn.Close();
        }
    }
}