﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_GradeBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] != null)
        {
            Label1.Text = Session["userid"].ToString();
            string sid = Session["userid"].ToString();

            gradeBook( sid);
        }
        else
        {
            Response.Redirect("Default.aspx");

        }

    }
    private void gradeBook(string sid)
    {
        SqlConnection con = new SqlConnection(DBClass.connectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("", con);
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "SELECT * from Gradebook where studentid='"+sid+"'";
        SqlDataAdapter adpt = new SqlDataAdapter(cmd);
        DataTable ds = new DataTable();
        adpt.SelectCommand = cmd;
        adpt.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();



    }





}