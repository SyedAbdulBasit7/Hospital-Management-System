using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbutton.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection(@"Data Source=BASIT\SQLEXPRESS;Initial Catalog=UserRegistrationDB;Integrated Security=True"))
        {
            sqlCon.Open(); 
            string query = "SELECT COUNT(1) FROM UserRegistration WHERE Email=@Email AND Password=@Password";
            SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
            sqlCmd.Parameters.AddWithValue("@Email", username.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Password",password.Text.Trim());
            int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
            if (count == 1)
            {
                Session["Email"] = username.Text.Trim();
                Response.Redirect("DashBoard.aspx");
            }
            else
            { 
                lbutton.Visible = true;
              
            }
        }
    }
}