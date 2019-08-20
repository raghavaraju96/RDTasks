<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="TasksGiven.RegisterPage" %>

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
                        <asp:Label ID="LblFirstName" runat="server" Text="FirstName"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TbFirstName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LblLastName" runat="server" Text="LastName"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TbLastName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LblUserName" runat="server" Text="UserName"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TbUsername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LblPassword" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TbPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TbConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="RBLGender" runat="server">
                            <asp:ListItem Value="Male"></asp:ListItem>
                            <asp:ListItem Value="Female"></asp:ListItem>
                            <asp:ListItem Selected="True" Value="N.A"></asp:ListItem>
                        </asp:RadioButtonList>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Location"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DDLLocation" runat="server">
                            <asp:ListItem Selected="True" Value="Select Location"></asp:ListItem>
                            <asp:ListItem Value="Hyderabad"></asp:ListItem>
                            <asp:ListItem Value="Vizag"></asp:ListItem>
                            <asp:ListItem Value="Chennai"></asp:ListItem>
                            <asp:ListItem Value="Bangalore"></asp:ListItem>
                            <asp:ListItem Value="Mumbai"></asp:ListItem>
                        </asp:DropDownList>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="BtnSubmit" runat="server" Text="Submit" BackColor="Blue" ForeColor="White" OnClick="BtnSubmit_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
