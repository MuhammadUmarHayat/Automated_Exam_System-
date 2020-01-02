<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_ApproveUsers.aspx.cs" Inherits="Admin_ApproveUsers" %>


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

                <h1 class="auto-style1"><strong> Approve user registeration

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





               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="userID" DataSourceID="SqlDataSource2">
                   <Columns>
                       <asp:CommandField ShowEditButton="True" />
                       <asp:BoundField DataField="userID" HeaderText="userID" ReadOnly="True" SortExpression="userID" />
                       <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                       <asp:BoundField DataField="FtherName" HeaderText="FtherName" SortExpression="FtherName" />
                       <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                       <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                       <asp:BoundField DataField="UserType" HeaderText="UserType" SortExpression="UserType" />
                       <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                   </Columns>
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
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IqraFinalDB1ConnectionString %>" SelectCommand="SELECT DISTINCT [userID], [Name], [FtherName], [Gender], [Email], [UserType], [Status] FROM [Users] WHERE ([Status] = @Status)" UpdateCommand="update Users set status=@status where userid=@userid">
                   <SelectParameters>
                       <asp:QueryStringParameter DefaultValue="Pending" Name="Status" QueryStringField="Status" Type="String" />
                   </SelectParameters>
               </asp:SqlDataSource>





           </div>
       


        </div>
         <div class="Footer">

            </div>

    </form>
</body>
</html>
