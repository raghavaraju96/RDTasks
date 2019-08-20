<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedirectingPage.aspx.cs" Inherits="Task1.RedirectingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            <asp:Label ID="Label2" runat="server" ForeColor="#009900" style="z-index: 1; left: 16px; top: 33px; position: absolute" Text="FirstName"></asp:Label>
        </p>
        <asp:Label ID="Label5" runat="server" ForeColor="#009933" style="z-index: 1; left: 19px; top: 61px; position: absolute" Text="LastName"></asp:Label>
        <asp:Label ID="Label6" runat="server" ForeColor="Red" style="z-index: 1; left: 18px; top: 125px; position: absolute" Text="Password"></asp:Label>
        <asp:Label ID="Label7" runat="server" ForeColor="#009933" style="z-index: 1; left: 19px; top: 93px; position: absolute" Text="UserName"></asp:Label>
        <asp:Label ID="lblRedirectedFirstName" runat="server" style="z-index: 1; left: 97px; top: 31px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="lblRedirectedLastName" runat="server" style="z-index: 1; left: 100px; top: 63px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="lblRedirectedUserName" runat="server" style="z-index: 1; left: 101px; top: 95px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="lblRedirectedPassword" runat="server" style="z-index: 1; left: 100px; top: 128px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label12" runat="server" ForeColor="#FF3300" style="z-index: 1; left: 20px; top: 9px; position: absolute" Text="The Entered Details are :"></asp:Label>
        <asp:Label ID="lblErrorMSg" runat="server" style="z-index: 1; left: 88px; top: 210px; position: absolute" Visible="False"></asp:Label>
    </form>
</body>
</html>
