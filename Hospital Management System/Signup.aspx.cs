using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Signup : System.Web.UI.Page
{
    string connectionString = @"Data Source=BASIT\SQLEXPRESS;Initial Catalog=UserRegistrationDB;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            clear();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection(connectionString))
        {
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("UserAddOrEdit",sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@UserId", Convert.ToInt32(hfUserID.Value == "" ? "0" : hfUserID.Value));
            sqlCmd.Parameters.AddWithValue("@FirstName", TextBox1.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@LastName", TextBox2.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Password", TextBox3.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Email", TextBox5.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedValue);
            sqlCmd.ExecuteNonQuery();
            clear();
        }
    }
    void clear()
    {
        TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = "";
        hfUserID.Value = "";
    }
}