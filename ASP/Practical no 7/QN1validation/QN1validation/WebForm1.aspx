<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="QN1validation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 24px;
        }
        .auto-style3 {
            height: 30px;
        }
        .auto-style4 {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <table style="width:100%;">
        <tr>
            <td>Username</td>
            <td> <asp:TextBox ID="Username" runat="server"></asp:TextBox>&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Username" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Password:</td>
            <td class="auto-style3"> <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ClientIDMode="AutoID" ControlToCompare="TextBox1" ControlToValidate="Textbox2" ErrorMessage="The Password is not same" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>Confirm Password:</td>
            <td> <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Age:</td>
            <td class="auto-style4"> 
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Age must be between  18 to  40" ForeColor="Red" MaximumValue="40" MinimumValue="18"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Countary Name :</td>
            <td class="auto-style2"> 
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Select Value</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>Brazil</asp:ListItem>
                </asp:DropDownList>
                <asp:CustomValidator ID="CustomValidator3" runat="server" ErrorMessage="*" ForeColor="Red" OnServerValidate="CustomValidator3_ServerValidate"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Email:</td>
            <td class="auto-style4"> <asp:TextBox ID="TextBox5" runat="server" TextMode="Email"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Please Enter valid Email" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Mobile no:</td>
            <td class="auto-style4"> <asp:TextBox ID="TextBox6" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="CustomValidator" ForeColor="Red" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td> <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /></td>
        </tr>
             
    </table>
        </div>
     </form>
</body>
</html>
