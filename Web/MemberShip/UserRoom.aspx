<%@ Page Language="C#" MasterPageFile="~/Master/UserRoom.master" AutoEventWireup="true" CodeFile="UserRoom.aspx.cs" Inherits="MemberShip_UserRoom" Title="DreamStar平台 用户中心" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style29
        {
            height: 36px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style26" style="height: 318px">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <table align="center" class="style14" 
                    style="border-style: dotted; width: 361px; height: 219px;">
                    <tr>
                        <td bgcolor="#99FF99"  style="text-align: center" class="style29">
                            &nbsp;&nbsp;
                            用户【<asp:Label ID="labname" runat="server" style="font-weight: 700; color: #669900"></asp:Label>】登录成功</td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Welcome.gif" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

