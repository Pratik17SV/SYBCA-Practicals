<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validator.aspx.cs" Inherits="practice_Web_app.Validator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Enter Username:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Enter Email:"></asp:Label>
            <asp:TextBox ID="EmailTextbox" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextbox" ErrorMessage="Email invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Enter Password:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="EmailTextbox" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox2" ErrorMessage="CompareValidator"></asp:CompareValidator>
            <br />
            age:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="RangeValidator" MaximumValue="50" MinimumValue="18"></asp:RangeValidator>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" />
        </div>
    </form>
</body>
</html>
