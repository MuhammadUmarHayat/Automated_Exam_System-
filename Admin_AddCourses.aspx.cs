using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddCourses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            
            SqlConnection conn = new SqlConnection(DBClass.connectionString);

            string query = "INSERT INTO course values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text +   "')";

            SqlCommand sqlCmd = new SqlCommand(query, conn);
            conn.Open();
            sqlCmd.ExecuteNonQuery();
            conn.Close();

            Label1.Text = "Data is saved";


        }
        catch (Exception exp)
        {

            Label1.Text = "Data is not saved due to exception or userID must be unique ";

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_AddCourses.aspx");
    }
}