<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Practical6Qn2.aspx.cs" Inherits="practice_Web_app.Practical6Qn2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile1.xml" OnAdCreated="AdRotator1_AdCreated" />
        </div>
    </form>
</body>
</html>
