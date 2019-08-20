<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="Task1.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="lblFirstName" runat="server" Text="FirstName"></asp:Label>
        <p>
            <asp:Label ID="lblLastName" runat="server" Text="LastName"></asp:Label>
            <asp:TextBox ID="TBFirstName0" runat="server" style="z-index: 1; left: 88px; top: 34px; position: absolute; height: 22px"></asp:TextBox>
           </p>
        <asp:TextBox ID="tbLastName" runat="server" style="z-index: 1; left: 93px; top: 75px; position: absolute"></asp:TextBox>
        <asp:Button ID="btnSubmit" runat="server" BackColor="#009933" ForeColor="White" OnClick="btnSubmit_Click" style="z-index: 1; left: 49px; top: 243px; position: absolute" Text="Submit" />
        <p>
            <asp:Label ID="lblUserName" runat="server" Text="UserName"></asp:Label>
        </p>
        <asp:TextBox ID="tbUserName" runat="server" style="z-index: 1; left: 94px; top: 129px; position: absolute"></asp:TextBox>
        <p>
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
        </p>
        <asp:TextBox ID="tbPassword" runat="server" style="z-index: 1; left: 93px; top: 180px; position: absolute"></asp:TextBox>
    </form>
</body>
</html>
