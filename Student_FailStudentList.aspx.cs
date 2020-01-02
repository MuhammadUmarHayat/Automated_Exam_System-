using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_FailStudentList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] != null)
        {
            Label1.Text = Session["userid"].ToString();
            FailStudents();
        }
        else
        {
            Response.Redirect("Default.aspx");

        }
    }

    private void FailStudents()
    {

        string query = "SELECT  * FROM GradeBook where status='Fail'";
        SqlConnection con = new SqlConnection(DBClass.connectionString);
        //Open database connection to connect to SQL Server
        con.Open();
        //Data table is used to bind the resultant data
        DataTable dtusers = new DataTable();
        // Create a new data adapter based on the specified query.
        SqlDataAdapter da = new SqlDataAdapter(query, con);

        da.Fill(dtusers);
        GridView1.DataSource = dtusers;
        GridView1.DataBind();




    }
}