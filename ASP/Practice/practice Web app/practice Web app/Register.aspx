<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="practice_Web_app.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Message" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Enter Name"></asp:Label>
            <asp:TextBox ID="name" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Enter password:"></asp:Label>
            <asp:TextBox ID="password" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="register_btn" runat="server" OnClick="register_btn_Click" Text="Register" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="delete" />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>

        </div>
    </form>
</body>
</html>
