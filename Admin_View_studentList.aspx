<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_View_studentList.aspx.cs" Inherits="Admin_View_studentList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AdminPannel</title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="Container">
            <div class="Header">

                <h1 class="auto-style1"><strong> List of Students

            </strong></h1>

            </div>
            <div class="NavBar">

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminPannel.aspx" CssClass="auto-style5">Home</asp:HyperLink><span class="auto-style5">|  
                  </span>  <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Admin_ApproveUsers.aspx" CssClass="auto-style5">Approve User registeration</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Admin_AddStudyProgram.aspx" CssClass="auto-style5">Add Study Program</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Admin_AddCourses.aspx" CssClass="auto-style5">Add courses</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Admin_EnrolStudents.aspx" CssClass="auto-style5">Enroll Students</asp:HyperLink>|
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin_ViewTeacherList.aspx" CssClass="auto-style5">Teacher List</asp:HyperLink>|
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Admin_View_studentList.aspx" CssClass="auto-style5">Student List</asp:HyperLink>|
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Logout.aspx" CssClass="auto-style5">LogOut</asp:HyperLink>

</div>
           <br />
                        <br />

        <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
             </asp:GridView>

  <br />
                        <br />
        </div>
         <div class="Footer">

            

            </div>

    </form>
</body>
</html>
