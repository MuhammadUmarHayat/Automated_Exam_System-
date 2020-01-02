using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {



        try
        {



            string userid = TextBox1.Text;
            string password = TextBox2.Text;

            string UserType = DropDownList1.Text;

            string query = "SELECT  * FROM users where userid='" + userid + "' and password='" + password + "'";
            SqlConnection con = new SqlConnection(DBClass.connectionString);
            //Open database connection to connect to SQL Server
            con.Open();
            //Data table is used to bind the resultant data
            DataTable dtusers = new DataTable();
            // Create a new data adapter based on the specified query.
            SqlDataAdapter da = new SqlDataAdapter(query, con);

            da.Fill(dtusers);
            if (dtusers.Rows.Count > 0)
            {
                string sqlUserType = dtusers.Rows[0]["usertype"].ToString();

                if (sqlUserType.Equals("Teacher")&& UserType.Equals("Teacher"))
                {
                    Session["userid"] = userid;
                    Response.Redirect("TeacherPannel.aspx");
                }
                else if (sqlUserType.Equals("Student") && UserType.Equals("Student"))
                {

                    Session["userid"] = userid;
                    Response.Redirect("StudentPannel.aspx");

                }
                


            }
            else if (userid.Equals("admin") && password.Equals("admin"))
            {

                Response.Redirect("AdminPannel.aspx");
            }
            else
            {


                Label1.Text = "UserID and or password wrong ";

            }

        }
        catch (Exception exp)
        {

            Label1.Text = exp.ToString();

        }

    }
}