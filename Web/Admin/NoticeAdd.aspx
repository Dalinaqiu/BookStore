<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="NoticeAdd.aspx.cs" Inherits="Admin_NoticeAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .style12
        {
            width: 100%;
            height: 490px;
        }
        .style14
        {
            width: 50%;
            height: 225px;
        }
        .style16
        {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        
       
            
    </div>



    <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Date" DataSourceID="SqlDataSource3" EnableModelValidation="True" GridLines="Horizontal">
        <EditItemTemplate>
            Date:
            <asp:Label ID="DateLabel1" runat="server" Text='<%# Eval("Date") %>' />
            <br />
            Content:
            <asp:TextBox ID="ContentTextBox" runat="server" Text='<%# Bind("Content") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            Date:
            <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
            <br />
            Content:
            <asp:TextBox ID="ContentTextBox" runat="server" Text='<%# Bind("Content") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            Date:
            <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
            <br />
            Content:
            <asp:Label ID="ContentLabel" runat="server" Text='<%# Bind("Content") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="删除" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新建" />
        </ItemTemplate>
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BookShopConnectionString %>" DeleteCommand="DELETE FROM [Notice] WHERE [Date] = @Date" InsertCommand="INSERT INTO [Notice] ([Date], [Content]) VALUES (@Date, @Content)" SelectCommand="SELECT * FROM [Notice]" UpdateCommand="UPDATE [Notice] SET [Content] = @Content WHERE [Date] = @Date">
        <DeleteParameters>
            <asp:Parameter Name="Date" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Content" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Content" Type="String" />
            <asp:Parameter Name="Date" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

