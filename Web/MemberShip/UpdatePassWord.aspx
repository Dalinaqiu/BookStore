<%@ Page Language="C#" MasterPageFile="~/Master/UserRoom.master" AutoEventWireup="true" CodeFile="UpdatePassWord.aspx.cs" Inherits="MemberShip_UpdatePassWord" Title="DreamStar平台 修改我的密码" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .tdleft
        {
          border:1px solid #BBE188;
          border-collapse:collapse;
          text-align:left;
          height:20px;
        }  
        .tdright
        {
          border:1px solid #BBE188;
          border-collapse:collapse;
          text-align:right;
          height:20px;
          width:100px;
        }        
        .style29
        {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="text-align: center;width:100%; height: 177px;"> 
        <tr>
            <td class="style29">
                <asp:Label ID="lbmessage" runat="server" Font-Size="X-Large" 
                    ForeColor="#FF3300"></asp:Label>
                </td>
        </tr>
        <tr>
            <td>
                <table style="text-align: center;width:95%; height: 131px; border:1px solid #BBE188;border-collapse:collapse">
                    <tr>
                        <td class="tdright">
                            原密码：</td>
                        <td class="tdleft">
                            <asp:TextBox ID="txtpwdold" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtpwdold" ErrorMessage="*不为空" ValidationGroup="a"></asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="tdright">
                            新密码：</td>
                        <td class="tdleft">
                            <asp:TextBox ID="txtpwdnew" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtpwdnew" ErrorMessage="*不为空" ValidationGroup="a"></asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="tdright">
                            确认密码：</td>
                        <td class="tdleft">
                            <asp:TextBox ID="txtpwdagin" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="txtpwdnew" ControlToValidate="txtpwdagin" 
                                ErrorMessage="前后密码不一致" ValueToCompare="a"></asp:CompareValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="tdright">
                            &nbsp;</td>
                        <td class="tdleft">
                            <asp:Button ID="btnok" runat="server" Text="确定" onclick="btnok_Click" 
                                ValidationGroup="a" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

