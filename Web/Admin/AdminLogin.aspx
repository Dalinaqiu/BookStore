<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录页面</title>
    <style>
        * {
        margin :0;
        padding:0;
        }
        .box1 
        {
            height:500px;
        }
        .box2 
        {
            width:auto;
            margin-top:100px;
        }
        .box3 
        {
            width:auto;
            margin:10px auto;
            text-align:center;
        }
    </style>
</head>
<body>
     <form runat="server">
    <div class ="box1">  
        <div class="box2">
            <div class="box3"> 
                <span>用户名：</span>    
    <asp:TextBox ID="txtUserName" runat="server"  ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*用户名"
                            ValidationGroup="v1" ControlToValidate="txtUserName" Font-Size="Small"></asp:RequiredFieldValidator> 
     </div></div>
            </br>      
    <div>
        <div class="box3">
                <span>密码：</span>    

        <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*密码"
                            ValidationGroup="v1" ControlToValidate="txtpwd" Font-Size="Small"></asp:RequiredFieldValidator>
     </div></div>
        </br>
        <div class="box3">
    <asp:CheckBox ID="cbok" runat="server" Text="记住密码" />
                   <br />
            </div>
                 <div class="box3">  <asp:ImageButton ID="imgbtnlogin" runat="server" ImageUrl="../Images/Admin/dl.gif" 
                       OnClick="imgbtnlogin_Click" ValidationGroup="v1" />&nbsp;
               <asp:ImageButton ID="imgbtnreset" runat="server" ImageUrl="../Images/Admin/cz.gif" 
                       onclick="imgbtnreset_Click" style="height: 18px" />&nbsp;
				    <asp:Label ID="labmessage" runat="server" 
                       style="font-size: 12px; color:Red; margin:0px; vertical-align:middle;"></asp:Label>
        </div></div></div></form>
</body>
</html>
