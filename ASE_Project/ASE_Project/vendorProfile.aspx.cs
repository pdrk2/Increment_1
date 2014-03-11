using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;

namespace ASE_Project
{
    public partial class Vendor_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
               SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();
            string[] b = new string[10];
            string main_vname = Session["main_vname"].ToString();
            SqlCommand cmd = new SqlCommand("select * from vendor where vname='" + main_vname + "' ", conn);
            SqlDataReader r = cmd.ExecuteReader();

       
        while (r.Read())
        {
            name.Text = r["vname"].ToString();
            contact.Text = r["vcontactno"].ToString();
            zipcode.Text = r["vzipcode"].ToString();
            email.Text = r["vemail"].ToString();
      
        }
        cmd.Dispose();
        conn.Close();
        }
        }
    }
