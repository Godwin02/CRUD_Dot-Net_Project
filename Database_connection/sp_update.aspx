<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sp_update.aspx.cs" Inherits="Database_connection.sp_update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList runat="server" ID="Datalist1">
            
                <HeaderTemplate>
                     <tr>
                    <td style="width:200px">
                    ID
                </td>
                                <td style="width:200px">
                    NAME
                </td>
                                <td style="width:200px">
                    AGE</td>
                                <td style="width:200px">
                    CLASS
                </td>
            </tr>
                </HeaderTemplate>
                <ItemTemplate>
                <tr>
                    <td style="width:200px">
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%#Eval("Id") %>'></asp:TextBox>
                    </td>
                                        <td style="width:200px">
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%#Eval("name") %>'></asp:TextBox>
                    </td>
                                        <td style="width:200px">
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%#Eval("age") %>'></asp:TextBox>
                    </td>
                                        <td style="width:200px">
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%#Eval("class") %>'></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Update" OnCommand="Button1_Click"/>
                        </td>
                </tr>
                </ItemTemplate>
            </asp:DataList>   
        </div>

                
            
    </form>
</body>
</html>
