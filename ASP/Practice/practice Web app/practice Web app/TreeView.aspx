<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TreeView.aspx.cs" Inherits="practice_Web_app.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TreeView ID="TreeView1" runat="server">
                <Nodes>
                    <asp:TreeNode Text="BCA" Value="BCA">
                        <asp:TreeNode Text="FYBCA" Value="FYBCA">
                            <asp:TreeNode Text="C" Value="C"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="Sybca" Value="Sybca">
                            <asp:TreeNode Text="Java" Value="Java"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="Tybca" Value="Tybca">
                            <asp:TreeNode Text="React" Value="React"></asp:TreeNode>
                        </asp:TreeNode>
                    </asp:TreeNode>
                </Nodes>
            </asp:TreeView>
        </div>
    </form>
</body>
</html>
