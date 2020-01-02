<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Automated Exam System</title>
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

                <h1 class="auto-style1"><strong>Automated Exam System By Hafiz Muhammad Umar Hayat

            </strong></h1>

            </div>
            <div class="NavBar">

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" CssClass="auto-style5">Home</asp:HyperLink><span class="auto-style5">|  
                  </span>  <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/RegisterationPage.aspx" CssClass="auto-style5">Register</asp:HyperLink>

</div>
           
           <div style="background-color:burlywood">




               <table align="center">
                   <tr>
                       <td class="auto-style1" colspan="3"><strong>Login</strong></td>
                   </tr>
                   <tr>
                       <td class="auto-style5">User Type</td> 
                       <td>
                           <asp:DropDownList ID="DropDownList1" runat="server">
                               <asp:ListItem>Admin</asp:ListItem>
                               <asp:ListItem>Teacher</asp:ListItem>
                               <asp:ListItem>Student</asp:ListItem>
                           </asp:DropDownList>
                       </td>
                       <td>
                           &nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Enter UserId</td> 
                       <td>
                           <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5"></asp:TextBox>
                       </td>
                       <td>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5">Enter Password</td>
                       <td>
                           <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style5" TextMode="Password"></asp:TextBox>
                       </td>
                       <td>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style5"><strong>
                           <asp:Label ID="Label1" runat="server"></asp:Label>
                           </strong></td>
                       <td>
                           <asp:Button ID="Button1" runat="server" Text="Login" CssClass="auto-style5" OnClick="Button1_Click" />
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
