using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_AddStudyProgram : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {


            SqlConnection conn = new SqlConnection(DBClass.connectionString);

            string query = "INSERT INTO Studyprogram(Program,Desciption,Department,Duration,CreditHours) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";

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
        Response.Redirect("Admin_AddStudyProgram.aspx");
    }
}