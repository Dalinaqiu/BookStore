<%@ Page Language="C#" MasterPageFile="~/Master/UserRoom.master" AutoEventWireup="true" CodeFile="MyOrder.aspx.cs" Inherits="MemberShip_MyOrder" Title="DreamStar平台 我的订单" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style26">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center">
                <asp:GridView ID="gvorderlist" runat="server" AutoGenerateColumns="False" 
                    onrowcommand="gvorderlist_RowCommand" DataKeyNames="Id" Width="80%" 
                    AllowPaging="True" onpageindexchanging="gvorderlist_PageIndexChanging">
                    <Columns>
                        <asp:TemplateField HeaderText="编号">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex+1 %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="用户名" DataField="UserName" />
                        <asp:BoundField HeaderText="订单总价" DataField="TotalPrice" />
                        <asp:BoundField HeaderText="订单日期" DataField="OrderDate" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lbtndetail" runat="server" CommandName="lbtndetail" CommandArgument='<%#Eval("Id") %>'>订单详情</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                        <ItemTemplate>
                                <asp:LinkButton ID="lbtndelete" runat="server" OnClientClick="javascript:return confirm('确定删除？')" CommandName="lbtndelete" CommandArgument='<%#Eval("Id") %>'>删除订单</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

