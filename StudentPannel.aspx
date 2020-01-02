<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentPannel.aspx.cs" Inherits="StudentPannel" %>

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

                <h1 class="auto-style1">S<strong>tudent Pannel

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
