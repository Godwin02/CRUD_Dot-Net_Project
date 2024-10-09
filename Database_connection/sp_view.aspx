<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sp_view.aspx.cs" Inherits="Database_connection.sp_view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="data">
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>

        <div style="margin-top:20px">
            <asp:DataList ID="DataList1" runat="server">
                <HeaderTemplate>
                    <tr>
                            <td style="width:200px">ROLL NO</td>
                            <td style="width:200px">NAME</td>
                            <td style="width:200px">AGE</td>
                            <td style="width:200px">CLASS</td>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    
                        
                        <tr>
                            <td style="width:200px">
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("Id") %>'></asp:Label>
                            </td>
                                                        <td style="width:200px">
                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                            </td>
                                                        <td style="width:200px">
                                <asp:Label ID="Label3" runat="server" Text='<%#Eval("age") %>'></asp:Label>
                            </td>
                                                        <td style="width:200px">
                                <asp:Label ID="Label4" runat="server" Text='<%#Eval("class") %>'></asp:Label>
                            </td>
                            <td style="width:200px">
                                <asp:Button ID="Button1" runat="server" Text="Delete" CommandArgument='<%#Eval("Id")%>' OnCommand="Button1_Command"/>
                            </td>
                        </tr>
                   
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
