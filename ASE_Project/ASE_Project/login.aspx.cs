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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void user_click(object sender, EventArgs e)
        {
            string name1 = name.Text;
          
            string password1 = password.Text;

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();
            SqlCommand cmd = new SqlCommand("select name,password from registration where name='" + name1 + "' and password='" + password1 + "'" , conn);
            string CurrentName;
CurrentName = (string)cmd.ExecuteScalar();
            
             Label3.Visible = true;
             if (CurrentName != null)
         
            {
                Label3.Text = "Login successful";
                Session["main_name"] = name1;
                Response.Redirect("userProfile.aspx");
            }
            else
            {
                Label3.Text = "Login Failed! Please check the login name/password !";
            }
            cmd.Dispose();
            conn.Close();
        }
        protected void vendor_click(object sender, EventArgs e)
        {
            string name2 = name.Text;
          
            string password2 = password.Text;

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();
            SqlCommand cmd = new SqlCommand("select vname,vpassword from vendor where vname='" + name2 + "' and vpassword='" + password2 + "'" , conn);
              string CurrentName;
CurrentName = (string)cmd.ExecuteScalar();
            
             Label3.Visible = true;
             if (CurrentName != null)
         
            {
                Label3.Text = "Login successful";
                Session["main_vname"] = name2;
                Response.Redirect("vendorProfile.aspx");
            }
            else
            {
                Label3.Text = "Login Failed! Please check the login name/password !";
            }
            cmd.Dispose();
            conn.Close();
        }
    }
}