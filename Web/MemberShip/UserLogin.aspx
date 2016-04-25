<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="MemberShip_Login" %>


<%@ Register src="../Control/WebCode/WebCode.ascx" tagname="WebCode" tagprefix="uc1" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DreamStar平台|用户登录</title>
    <style type="text/css">
        .style1
        {
            text-align: left;
        }
        .style2
        {
            height: 52px;
        }
        .style3
        {
            text-align: left;
            height: 40px;
            width: 37%;
        }
        .style4
        {
            height: 9px;
        }
        .style5
        {
            height: 9px;
            width: 37%;
        }
        .style6
        {
            text-align: left;
            width: 37%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
 <table width="40%" height="22" border="0" align="center" cellpadding="0" cellspacing="0" runat="server" id="tblfirst">
<tr>
  <td width="10"><img src="../Images/az-tan-top-left-round-corner.gif" width="10" height="28" /></td>
  <td bgcolor="#DDDDCC"><span style="font-family: '黑体';font-size: 16px;color: #660000;">登录第三波书店</span></td>
  <td width="10"><img src="../Images/az-tan-top-right-round-corner.gif" width="10" height="28" /></td>
</tr>
</table>
<table width="40%" height="22" border="0" align="center" cellpadding="0" cellspacing="0" runat="server" id="tblsecend">
<tr>
  <td bgcolor="#DDDDCC" style="width: 2px">&nbsp;</td>
  <td><div align="center">
      <table cellpadding="0" cellspacing="0" style="height: 87px; width: 440px;">
        <tr>
          <td colspan="6" class="style2"><p style="font-size:14px;font-weight: bold;color: #FF9900;">已注册用户请从这里登录</p></td>
        </tr>
        <tr>
          <td width="24%" height="26" rowspan="2" align="right" valign="top"><strong>用户名：</strong></td>
          <td valign="top" width="37%" class="style1">
              &nbsp;<asp:TextBox ID="txtLoginId" runat="server" BackColor="#DDDDCC" 
                  Width="120px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLoginId"
      ErrorMessage="*用户名不为空"></asp:RequiredFieldValidator></td>                  
        </tr>
      </table>
    <table cellpadding="0" cellspacing="0" style="height: 79px; width: 440px;">
        <tr>
          <td class="style4"></td>
          <td class="style5"></td>
        </tr>
        <tr>
          <td width="24%" height="26" rowspan="4" align="right" valign="top"><strong>密　码：<br />
              <br />
              <br />
              验证码：</strong></td>
          <td valign="top" class="style3">
              &nbsp;<asp:TextBox ID="txtLoginPwd" runat="server" TextMode="Password" 
                  BackColor="#DDDDCC" Width="120px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLoginPwd"
      ErrorMessage="*密码不为空"></asp:RequiredFieldValidator></td>                  
        </tr>
        
        <tr>
          <td valign="top" class="style6">
              <asp:TextBox ID="txtLogincode" runat="server" TextMode="Password" 
                  BackColor="#DDDDCC" Width="120px"></asp:TextBox>
              
              <uc1:WebCode ID="WebCode1" runat="server" />
              
              <asp:LinkButton ID="LinkButton1" runat="server" 
          CausesValidation="False">看不清？换一张</asp:LinkButton>
              
            </td>                  
        </tr>
        
        <tr>
          <td valign="top" class="style6">
              <asp:Label ID="labmessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLogincode"
      ErrorMessage="*验证码不为空"></asp:RequiredFieldValidator>
              
            </td>                  
        </tr>
        
      </table>
      <div>
          <br />
    <asp:ImageButton runat="server" ID="imgbtnLogin" ImageUrl="../Images/az-login-gold-3d.gif" OnClick="btnLogin_Click" />
    <asp:ImageButton runat="server" ID="imgbtnRegister" ImageUrl="../Images/az-newuser-gold-3d.gif" OnClick="btnRegister_Click"  CausesValidation="false"/>
  </div>
      <div >
        <div align="center">
            &nbsp;</div>
      </div>
    </td>
  <td width="2" bgcolor="#DDDDCC">&nbsp;</td>
</tr>
</table>
<table width="40%" height="3" border="0" align="center" cellpadding="0" cellspacing="0"  runat="server" id="tblthird">
<tr align="center">
  <td height="3" bgcolor="#DDDDCC">
      &nbsp;
              </td>
      </tr>
</table>
    </form>
</body>
</html>
