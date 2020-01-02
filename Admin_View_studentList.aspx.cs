using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_View_studentList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



         bindAllStudents();
    }


    private void bindAllStudents()
    {
        string query = "SELECT  * FROM users where usertype='student'";
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