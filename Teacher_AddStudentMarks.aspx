<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacher_AddStudentMarks.aspx.cs" Inherits="Teacher_AddStudentMarks" %>


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
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="Container">
            <div class="Header">

                <h1 class="auto-style1"><strong>Student Activity Marks

            </strong></h1>

            </div>
            <div class="NavBar">

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/TeacherPannel.aspx" CssClass="auto-style5">Home</asp:HyperLink><span class="auto-style5">|  
                  <br />
                <strong>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style2"></asp:Label>
                </strong>  
                  </span>  

</div>
           
           <div style="background-color:burlywood">




               <table align="center">
                   <tr>
                       <td class="auto-style1" colspan="3"><strong>
                          Fill the form 

                                                           </strong></td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Student ID</td>
                       <td>
                           <asp:DropDownList ID="ddlSID" runat="server">
                           </asp:DropDownList>
                       </td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Study Program</td>
                       <td>
                           <asp:DropDownList ID="ddlSP" runat="server">
                           </asp:DropDownList>
                       </td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Course ID</td>
                       <td>
                           <asp:DropDownList ID="ddlcourseid" runat="server">
                           </asp:DropDownList>
                       </td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Semester</td>
                       <td>
                           <asp:TextBox ID="txtSemester" runat="server" CssClass="auto-style5"></asp:TextBox>
                       </td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Assignment Marks </td>
                       <td>
                           <asp:TextBox ID="txtAss" runat="server" CssClass="auto-style5" TextMode="Password"></asp:TextBox>
                       </td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Quiz Marks</td>
                       <td>
                           <asp:TextBox ID="txtQuiz" runat="server" CssClass="auto-style5" TextMode="Password"></asp:TextBox>
                       </td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Midterm Marks</td>
                       <td>
                           <asp:TextBox ID="txtMid" runat="server" CssClass="auto-style5"></asp:TextBox>
                       </td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Status</td>
                       <td>
                           <asp:DropDownList ID="ddlStatus" runat="server">
                               <asp:ListItem>Fail</asp:ListItem>
                               <asp:ListItem>Pass</asp:ListItem>
                           </asp:DropDownList>
                       </td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">&nbsp;</td>
                       <td>
                           &nbsp;</td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5"><strong>
                           <asp:Label ID="Label1" runat="server"></asp:Label>
                           </strong></td>
                       <td>
                           <asp:Button ID="Button1" runat="server" Text="Save" CssClass="auto-style5" OnClick="Button1_Click" />
                       &nbsp;<asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="auto-style5" OnClick="Button2_Click" CausesValidation="False" />
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
