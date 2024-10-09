<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Database_connection.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .form{
            display:flex;
            flex-direction:column;
            align-items:center;
            height:400px;   
            width:fit-content;
            padding:25px;
            justify-content:space-around;
            background-color:antiquewhite;
            margin-left:500px;  
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="form">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Enter Roll Number"></asp:Label><br />
            <asp:TextBox ID="rollno" runat="server" placeholder="Roll No"></asp:TextBox>
          </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Enter Your Name"></asp:Label><br />
            <asp:TextBox ID="name" runat="server" placeholder="Name"></asp:TextBox>
         </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Enter Age"></asp:Label><br />
            <asp:TextBox ID="age" runat="server" placeholder="Age"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label4" runat="server" Text="Enter Class"></asp:Label><br />
        <asp:TextBox ID="clas" runat="server" placeholder="Class"></asp:TextBox>
        </div>

            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </form>
</body>
</html>
