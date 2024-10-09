<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_view.aspx.cs" Inherits="Database_connection.grid_view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .grid{
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="grid">
            <asp:GridView ID="GridView1" AllowSorting="true"  CellPadding="10" Width="1000px" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
        </div>
    </form>
</body>
</html>
