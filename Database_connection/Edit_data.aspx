<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_data.aspx.cs" Inherits="Database_connection.Edit_data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .item{
            display:flex;
            flex-direction:row;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="item">
        <div>
            <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label><br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
                <div>
            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label><br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
                <div>
            <asp:Label ID="Label3" runat="server" Text="Age"></asp:Label><br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </div>
                <div>
            <asp:Label ID="Label4" runat="server" Text="Class"></asp:Label><br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
    </form>
</body>
</html>
