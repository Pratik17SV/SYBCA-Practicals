<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Practical4Qn2.aspx.cs" Inherits="practice_Web_app.Practical4Qn2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="ListBox1" runat="server">
                <asp:ListItem>Pen</asp:ListItem>
                <asp:ListItem>Pencil</asp:ListItem>
            </asp:ListBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />
            <asp:ListBox ID="ListBox2" runat="server"></asp:ListBox>
        </div>
    </form>
</body>
</html>
