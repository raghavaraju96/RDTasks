<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedirectingPage.aspx.cs" Inherits="TasksGiven.RedirectingPage" %>

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
                       <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>  
                   </td>
                   <td>
                       <asp:Label ID="LblUserName" runat="server" Text="" Visible="false"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td>
                       <asp:Label ID="Label3" runat="server" Text="FirstName"></asp:Label>  
                   </td>
                   <td>
                       <asp:Label ID="LblFirstName" runat="server" Text="" Visible="false"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td>
                       <asp:Label ID="Label4" runat="server" Text="LastName"></asp:Label>  
                   </td>
                   <td>
                       <asp:Label ID="LblLastName" runat="server" Text="" Visible="false"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td>
                       <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>  
                   </td>
                   <td>
                       <asp:Label ID="LblGender" runat="server" Text="" Visible="false"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td>
                       <asp:Label ID="Label6" runat="server" Text="Location"></asp:Label>  
                   </td>
                   <td>
                       <asp:Label ID="LblLocation" runat="server" Text="" Visible="false"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td>
                       <asp:Button ID="BtnLogOff" runat="server" Text="Logoff" ForeColor="White" BackColor="Red" OnClick="BtnLogOff_Click"/>
                   </td>
               </tr>
           </table>
       </div>
    </form>
</body>
</html>
