<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sp_insert.aspx.cs" Inherits="Database_connection.sp_insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Roll No"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Name"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" placegholder="Age"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" placeholder="Classs"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

        </div>
    </form>
</body>
</html>
