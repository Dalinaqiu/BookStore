<%@ Page Language="C#" MasterPageFile="~/Master/UserRoom.master" AutoEventWireup="true" CodeFile="UpdateMyMessage.aspx.cs" Inherits="MemberShip_UpdateMyMessage" Title="DreamStar平台 修改我的信息" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
  
        .tdright
        {
          border:1px solid #BBE188;
          border-collapse:collapse;
          text-align:right;
          height:20px;
        }        
        .tdleft
        {
          border:1px solid #BBE188;
          border-collapse:collapse;
          text-align:left;
          height:20px;
        }  
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style26">
        <tr>
            <td style="text-align: center">
                <asp:Label ID="lbmessage" runat="server" Font-Size="X-Large" 
                    ForeColor="#FF3300"></asp:Label>
                </td>
        </tr>
        <tr>
            <td style="text-align: center">
                            <table style="width:96%;border:1px solid #BBE188;border-collapse:collapse">
                                                <tr>
                                                    <td class="tdright">
                                                        登录名：</td>
                                                    <td style="text-align: left" class="tdleft">
                                                        <asp:TextBox ID="txtLoginId" runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="tdright">
                                                        姓名：</td>
                                                    <td class="tdleft">
                                                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="tdright">
                                                        邮箱：</td>
                                                    <td class="tdleft">
                                                        <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="tdright">
                                                        地址：</td>
                                                    <td class="tdleft">
                                                        <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="tdright">
                                                        电话：</td>
                                                    <td class="tdleft">
                                                        <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr >
                                                    <td class="tdright">
                                                        &nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                    <td class="tdleft">
                                                        <asp:Button ID="btnupdate" runat="server" Text="更新" onclick="btnupdate_Click" />
&nbsp;</td>
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

