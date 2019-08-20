<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LioginPage.aspx.cs" Inherits="TasksGiven.LioginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" ForeColor="Blue" Text="UserName"></asp:Label>
                    </td>
                    <td>
                         <asp:TextBox ID="TbUserName" runat="server" Width="128px"></asp:TextBox>
                    </td>
                     </tr>
                <tr>
                    <td>
                          <asp:Label ID="Label2" runat="server" ForeColor="Blue" Text="Password"></asp:Label>
                    </td>
                    <td>
                         <asp:TextBox ID="TbPassword" runat="server" Width="128px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Button ID="Button1" runat="server" BackColor="Green" ForeColor="White" Text="Login" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <asp:HyperLink ID="RegisterLink" runat="server" ForeColor="Blue" NavigateUrl="~/RegisterPage.aspx">Register?</asp:HyperLink>
                    </td>
                </tr>
               
            </table>
        </div>
        
       
        
        
        <asp:Label ID="LblSuccesMsg" runat="server" Visible="False"></asp:Label>
        
       
        
        
    </form>
</body>
</html>
