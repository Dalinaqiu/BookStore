<%@ Page Language="C#" MasterPageFile="~/Master/UserRoom.master" AutoEventWireup="true" CodeFile="MyOrderDetail.aspx.cs" Inherits="MemberShip_MyOrderDetail" Title="DreamStar平台 我的订单详情" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style26">
        <tr>
            <td>
                <br />
                <asp:LinkButton ID="lbntreturn" runat="server" onclick="lbntreturn_Click">返回查看其它订单</asp:LinkButton>
                <br />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:GridView ID="gvorderdetail" runat="server" AutoGenerateColumns="False" 
                    onpageindexchanging="gvorderdetail_PageIndexChanging">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="订单人" />
                        <asp:TemplateField HeaderText="图书封面">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="50px" Width="46px" ImageUrl='<%#"~/Images/BookCovers/"+Eval("ISBN")+".jpg" %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Title" HeaderText="书名" />
                        <asp:BoundField DataField="Quantity" HeaderText="数量" />
                        <asp:BoundField DataField="UnitPrice" HeaderText="单价" />
                        <asp:BoundField DataField="OrderDate" HeaderText="订单日期" />
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

