using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_AddStudentMarks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (Session["userid"] != null)
        {
            Label1.Text = Session["userid"].ToString();
            bindUserID();
            bindstudyProgram();
            bindCourseID();


        }
        else
        {
            Response.Redirect("Default.aspx");

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

           


                SqlConnection conn = new SqlConnection(DBClass.connectionString);

                string query = "INSERT INTO GradeBook(studentID,studyProgram,courseID,Assignment,Quiz,Midterm,status,Semester) values('" + ddlSID.Text + "','" + ddlSP.Text + "','" + ddlcourseid.Text + "','" + txtAss.Text + "','" + txtQuiz.Text + "','" + txtMid.Text + "','" + ddlStatus.Text + "','" + txtSemester.Text + "')";

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

    }


    #region BindDrop down
    private void bindUserID()
    {
        SqlConnection con = new SqlConnection(DBClass.connectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("", con);
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "SELECT DISTINCT userid from users where usertype='student'";
        SqlDataAdapter adpt = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adpt.SelectCommand = cmd;
        adpt.Fill(ds);

        // bind domain with the dropdownlist
        

        ddlSID.DataTextField = "userid";
        ddlSID.DataValueField = "userid";
        ddlSID.DataSource = ds;
        ddlSID.DataBind();
        con.Close();




    }

    private void bindstudyProgram()
    {
        SqlConnection con = new SqlConnection(DBClass.connectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("", con);
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "SELECT DISTINCT Program from StudyProgram";
        SqlDataAdapter adpt = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adpt.SelectCommand = cmd;
        adpt.Fill(ds);

        // bind domain with the dropdownlist


        ddlSP.DataTextField = "Program";
        ddlSP.DataValueField = "Program";
        ddlSP.DataSource = ds;
        ddlSP.DataBind();
        con.Close();




    }



    private void bindCourseID()
    {
        SqlConnection con = new SqlConnection(DBClass.connectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("", con);
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "SELECT DISTINCT courseid from course";
        SqlDataAdapter adpt = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adpt.SelectCommand = cmd;
        adpt.Fill(ds);

        // bind domain with the dropdownlist


        ddlcourseid.DataTextField = "courseid";
        ddlcourseid.DataValueField = "courseid";
        ddlcourseid.DataSource = ds;
        ddlcourseid.DataBind();
        con.Close();




    }






    #endregion




}