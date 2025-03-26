<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrossPageHosting.aspx.cs" Inherits="practice_Web_app.CrossPageHosting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" ID ="lblname" Text ="Enter Your Name:"></asp:Label>
            &nbsp;
            <asp:TextBox runat="server" ID="name"></asp:TextBox>
            <br/>
            <asp:Label runat="server" ID="lblcolor" Text="Choose Color:"></asp:Label>
            
            &nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Red</asp:ListItem>
                <asp:ListItem>Yellow</asp:ListItem>
                <asp:ListItem>Blue</asp:ListItem>
            </asp:DropDownList>
            <br/>
            <asp:Button runat="server" ID="submit" Text="Submit" PostBackUrl="~/Page2.aspx" />
        </div>
    </form>
</body>
</html>
