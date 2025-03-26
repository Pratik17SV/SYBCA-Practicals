<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Qn1Practical2.aspx.cs" Inherits="practice_Web_app.Qn1Practical2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Select the city:"></asp:Label>
            <asp:RadioButton ID="mumbai" runat="server" AutoPostBack="True" GroupName="city" Text="Mumbai" OnCheckedChanged="mumbai_CheckedChanged" />
            <asp:RadioButton ID="Pune" runat="server" AutoPostBack="True" GroupName="city" Text="Pune" OnCheckedChanged="Pune_CheckedChanged" />
            <br />
            <asp:DropDownList ID="Theaters" runat="server"  Visible="False">
            </asp:DropDownList>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-bottom: 0px" Text="Show Timing" Visible="False" />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Dhoom        06:06pm" Visible="False"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Inter Staler       7:00pm" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>
