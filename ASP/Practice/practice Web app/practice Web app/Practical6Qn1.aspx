<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Practical6Qn1.aspx.cs" Inherits="practice_Web_app.Practical6Qn1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TreeView ID="TreeView1" runat="server" ShowLines="True" >
                <Nodes>
                    <asp:TreeNode Text="BCA" Value="BCA">
                        <asp:TreeNode Text="FYBCA" Value="FYBCA">
                            <asp:TreeNode Text="C" Value="C" NavigateUrl="~/Programing.aspx"></asp:TreeNode>
                            <asp:TreeNode Text="DCF" Value="DCF"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="SYBCA" Value="SYBCA">
                            <asp:TreeNode Text="PYTHON" Value="PYTHON" NavigateUrl="~/Python.aspx"></asp:TreeNode>
                            <asp:TreeNode Text="AWP" Value="AWP"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="TYBCA" Value="TYBCA">
                            <asp:TreeNode Text="MERN" Value="MERN" ></asp:TreeNode>
                            <asp:TreeNode Text="DATA SCIENCE" Value="DATA SCIENCE" NavigateUrl=""></asp:TreeNode>
                        </asp:TreeNode>
                    </asp:TreeNode>
                </Nodes>
            </asp:TreeView>
        </div>
    </form>
</body>
</html>
