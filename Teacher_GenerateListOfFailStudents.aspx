<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacher_GenerateListOfFailStudents.aspx.cs" Inherits="Teacher_GenerateListOfFailStudents" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teacher Pannel</title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            color: #660066;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="Container">
            <div class="Header">

                <h1 class="auto-style1"><strong>List of Fail Students

            </strong></h1>

            </div>
            <div class="NavBar">

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/TeacherPannel.aspx" CssClass="auto-style5">Home</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Teacher_AddStudentMarks.aspx" CssClass="auto-style5">Add Student marks</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Teacher_GenerateListOfPassStudents.aspx" CssClass="auto-style5">List Pass Students</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Teacher_GenerateListOfFailStudents.aspx" CssClass="auto-style5">List of Fail Studnets</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Logout.aspx" CssClass="auto-style5">Log Out</asp:HyperLink>

</div>
           
           <div style="background-color:burlywood">




               


               <strong>
               <asp:Label ID="Label1" runat="server" CssClass="auto-style2"></asp:Label>
               </strong>
               <br />
               <br />
               <br />
               <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                   <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                   <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                   <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                   <RowStyle BackColor="White" ForeColor="#330099" />
                   <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                   <SortedAscendingCellStyle BackColor="#FEFCEB" />
                   <SortedAscendingHeaderStyle BackColor="#AF0101" />
                   <SortedDescendingCellStyle BackColor="#F6F0C0" />
                   <SortedDescendingHeaderStyle BackColor="#7E0000" />
               </asp:GridView>
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />




               


           </div>


        </div>
         <div class="Footer">

            </div>

    </form>
</body>
</html>
