<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_PassStudentList.aspx.cs" Inherits="Student_PassStudentList" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Automated Exam System </title>
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

                <h1 class="auto-style1"><strong>Pass Student List

            </strong></h1>

            </div>
            <div class="NavBar">

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/StudentPannel.aspx" CssClass="auto-style5">Home</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/StudentRollNoSlip.aspx" CssClass="auto-style5">Get Roll Number Slip</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/StudentRollNoSlip.aspx" CssClass="auto-style5">Pass Student List</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Student_FailStudentList.aspx" CssClass="auto-style5">Fail Student List</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Student_GradeBook.aspx" CssClass="auto-style5">Grade Book</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Logout.aspx" CssClass="auto-style5">LogOut</asp:HyperLink>

</div>
           
           <div style="background-color:burlywood">




               


               <strong>
               <asp:Label ID="Label1" runat="server" CssClass="auto-style2"></asp:Label>
               </strong>
               <br />
               <br />
               <br />
               <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                   <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                   <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                   <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                   <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                   <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                   <SortedAscendingCellStyle BackColor="#FFF1D4" />
                   <SortedAscendingHeaderStyle BackColor="#B95C30" />
                   <SortedDescendingCellStyle BackColor="#F1E5CE" />
                   <SortedDescendingHeaderStyle BackColor="#93451F" />
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
