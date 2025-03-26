<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Qn3Practical2.aspx.cs" Inherits="practice_Web_app.Qn3Practical2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Enter User name:"></asp:Label>
        <asp:TextBox ID="uname" runat="server"></asp:TextBox>
        <br />
        <asp:RadioButton ID="Red" runat="server" AutoPostBack="True" GroupName="color" OnCheckedChanged="Red_CheckedChanged" Text="Red" />
        <asp:RadioButton ID="Blue" runat="server" AutoPostBack="True" GroupName="color" OnCheckedChanged="Blue_CheckedChanged" Text="Blue" />
        <asp:RadioButton ID="yellow" runat="server" AutoPostBack="True" GroupName="color" OnCheckedChanged="yellow_CheckedChanged" Text="yellow" />
        <br />
        <asp:CheckBox ID="Underline" runat="server" AutoPostBack="True" OnCheckedChanged="Underline_CheckedChanged" Text="Underline" />
        <asp:CheckBox ID="Bold" runat="server" AutoPostBack="True" OnCheckedChanged="Bold_CheckedChanged" Text="Bold" />
        <asp:CheckBox ID="Italic" runat="server" AutoPostBack="True" OnCheckedChanged="Italic_CheckedChanged" Text="Italic" />
        <br />
        <asp:Label ID="name" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <div>

        </div>
    </form>
</body>
</html>
