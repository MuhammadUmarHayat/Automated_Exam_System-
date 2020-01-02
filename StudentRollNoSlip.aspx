<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentRollNoSlip.aspx.cs" Inherits="StudentRollNoSlip" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Automated Exam System: Test Phase</title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>


    <script language=javascript>
function CallPrint(strid)
{
 var prtContent = document.getElementById(strid);
 var WinPrint =
window.open('','','letf=0,top=0,width=1,height=1,toolbar=0,scrollbars=0,sta¬tus=0');
 WinPrint.document.write(prtContent.innerHTML);
 WinPrint.document.close();
 WinPrint.focus();
 WinPrint.print();
 WinPrint.close();
 prtContent.innerHTML=strOldOne;
}
</script>

</head>
<body>
    <form id="form1" runat="server">
         <div class="Container">
            <div class="Header">

                <h1 class="auto-style1"><strong>Automated Exam System

            </strong></h1>

            </div>
            <div class="NavBar">
 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/StudentPannel.aspx" CssClass="auto-style5">Home</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/StudentRollNoSlip.aspx" CssClass="auto-style5">Get Roll Number Slip</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Student_PassStudentList.aspx" CssClass="auto-style5">Pass Student List</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Student_FailStudentList.aspx" CssClass="auto-style5">Fail Student List</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Student_GradeBook.aspx" CssClass="auto-style5">Grade Book</asp:HyperLink>

                |<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Logout.aspx" CssClass="auto-style5">LogOut</asp:HyperLink>
                
</div>
           
           <div style="background-color:burlywood">




               


               <strong>
               <asp:Label ID="Label1" runat="server"></asp:Label>
               </strong>
               <br />
               <br />
               <br />
               <br />
               <br />
               <input ID="btnPrint" type="button" value="Print" runat="server"  onClick="javascript:CallPrint('divPrint');" />
               
               <div  id="divPrint">  
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


               </div>
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
