<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Data_List.aspx.cs" Inherits="Database_connection.Data_List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server">
                <HeaderTemplate>
                    <table style="width:900px">
                        <tr>
                            <td style="width:300px">ID</td>
                            <td style="width:300px">Name</td>
                            <td style="width:300px">Age</td>
                            <td style="width:300px">Class</td>
                            <td style="width:300px">Delete</td>
                                                        <td style="width:300px">Delete</td>
                            <td style="width:300px">Update</td>

                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table style="width:900px">
                        <tr>
                            <td style="width:300px">
                                <asp:Label runat="server" ID="Label1" Text='<%#Eval("Id") %>'></asp:Label>
                            </td>
                                <td style="width:300px">
                                <asp:Label runat="server" ID="Label2" Text='<%#Eval("name") %>'></asp:Label>
                            </td>
                           <td style="width:300px">
                                <asp:Label runat="server" ID="Label3" Text='<%#Eval("age") %>'></asp:Label>
                            </td>
                            <td style="width:300px">
                                <asp:Label runat="server" ID="Label4" Text='<%#Eval("class") %>'></asp:Label>
                            </td>
                            <td style="width:300px">
                                <a class="btn-danger" href="remove_student.aspx?id=<%#DataBinder.Eval(Container.DataItem,"Id") %>">Remove</a>
                            </td>
                            <td style="width:300px">
                                <asp:Button ID="butn" runat="server" Text="Delete" value='<%#Eval("Id") %>'  OnClick="Button1_Click" />
                            </td>
                             <td style="width:300px">
                                <a class="btn-danger" href="Edit_data.aspx?id=<%#DataBinder.Eval(Container.DataItem,"Id") %>">EDIT</a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
      
    </form>
</body>
</html>
