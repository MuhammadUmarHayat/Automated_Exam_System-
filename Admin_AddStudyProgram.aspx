<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_AddStudyProgram.aspx.cs" Inherits="Admin_AddStudyProgram" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AdminPannel</title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            color: #6600FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="Container">
            <div class="Header">

                <h1 class="auto-style1"><strong> Add Study Program

            </strong></h1>

            </div>
            <div class="NavBar">

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminPannel.aspx" CssClass="auto-style5">Home</asp:HyperLink><span class="auto-style5">|  
                  </span>  <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Admin_ApproveUsers.aspx" CssClass="auto-style5">Approve User registeration</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Admin_AddStudyProgram.aspx" CssClass="auto-style5">Add Study Program</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Admin_AddCourses.aspx" CssClass="auto-style5">Add courses</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Admin_EnrolStudents.aspx" CssClass="auto-style5">Enroll Students</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Logout.aspx" CssClass="auto-style5">LogOut</asp:HyperLink>

</div>
           
       <div>





           <table class="auto-style2">
               <tr>
                   <td>Please fill the form</td>
                   <td>&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td>Degree Program</td>
                   <td>
                       <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                   </td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td>Description</td>
                   <td>
                       <asp:TextBox ID="TextBox2" runat="server" Height="75px" TextMode="MultiLine" Width="484px"></asp:TextBox>
                   </td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td>Department</td>
                   <td>
                       <asp:TextBox ID="TextBox3" runat="server" Width="119px"></asp:TextBox>
                   </td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td>Duration</td>
                   <td>
                       <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                   </td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td>Credit Hours</td>
                   <td>
                       <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                   </td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td><strong>
                       <asp:Label ID="Label1" runat="server" CssClass="auto-style3"></asp:Label>
                       </strong></td>
                   <td>
                       <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add " />
&nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" OnClick="Button2_Click" Text="Cancel" />
                   </td>
                   <td>&nbsp;</td>
               </tr>
           </table>





       </div>


        </div>
         <div class="Footer">

            </div>

    </form>
</body>
</html>
