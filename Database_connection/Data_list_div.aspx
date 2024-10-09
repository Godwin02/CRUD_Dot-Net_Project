<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Data_list_div.aspx.cs" Inherits="Database_connection.Data_list_div" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .data{
            margin-left:400px;

        }
        .item {
            width:500px;
            background-color:bisque;
            display:flex;
            border-radius:5px;
            border:thin;
            border-color:brown;
            flex-direction:row;
            justify-content:space-evenly;
            gap:30px;
            height:100px;
            align-items:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="data">

            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <div class="item">
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("Id") %>'></asp:Label>
                   
                    
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                 
               
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("age") %>'></asp:Label>
               
                 
                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("class") %>'></asp:Label>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
