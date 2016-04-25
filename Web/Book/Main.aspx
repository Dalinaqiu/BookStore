<%@ Page Language="C#" MasterPageFile="~/Master/User.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="MemberShip_Main" Title="DreamStar平台 首页" %>

<%@ Register src="../Control/BookImages.ascx" tagname="BookImages" tagprefix="uc2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            width: 100%;
            height: 80px;
        }
        .style21
        {
            width: 120px;
        }
        .style22
        {
            width: 656px;
        }
        .style25
        {
            color: #FF0000;
        }
        .style26
        {
            color: #FF3300;
        }
        .style28
        {
            width: 656px;
            height: 233px;
        }
        .style29
        {
            width: 656px;
            height: 111px;
        }
        .style30
        {
            width: 656px;
        }
        .style32
        {
            width: 688px;
        }
        .style31
        {
            color: #FFFFFF;
            height: 20px;
            font-weight: bold;
            text-align: center;
        }
        .style33
        {
            width: 100%;
        }
        .style34
        {
            height: 550px;
        }
        .styleBox3 
        {
            background-color:#acbdb3;
        }
        .notice 
        {
            font:40px;
            color:#FF0000;
        }
        .styleNotice
        {
            margin:1px auto;
        }
         a:link,a:visited
     {
     text-decoration:none;  /*超链接无下划线*/
      }
     a:hover
     {
    text-decoration:underline;  /*鼠标放上去有下划线*/
     }
        .style35
        {
            height: 24px;
        }
        .auto-style1 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">
    <table class="style15" >
         <tr>
            <td class="style29">
                <table class="style15">
                    <tr>
                        <td bgcolor="#BBE188">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            
                         <div class="styleNotice">
                        <span style ="align-content:center;font-size:large">最新通知：</span>
                             <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="100%">
                                 <ItemTemplate>
                                     Content:
                                     <p class="notice"><asp:Label ID="ContentLabel" runat="server" Text='<%# Eval("Content") %>' /></p>
                                     <br />
<br />
                                 </ItemTemplate>
                             </asp:DataList>
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookShopConnectionString %>" SelectCommand="SELECT [Content] FROM [Notice]"></asp:SqlDataSource>
                         </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style30" valign="top">
                <table class="style15">
                    <tr>
                        <td class="style32">
                            <asp:Image ID="Image1" runat="server" 
                                ImageUrl="~/Images/06default_1018_28.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style32" valign="top">
                            <asp:DataList ID="dlrecommand" runat="server" Width="92%">
                                <ItemTemplate>
                                    <table class="style15">
                                        <tr>
                                            <td rowspan="5" class="style21">
                                               <a href='<%# "../Book/BookDetail.aspx?BookId="+ Eval("Id") %>'> <asp:Image ID="Image3" runat="server" Height="156px" Width="119px" ImageUrl='<%# BindImg(Eval("ISBN"))%>' ToolTip='<%#Eval("Title") %>' />
                                               </a>
                                            </td>
                                            <td>
                                                 <a href='<%# "../Book/BookDetail.aspx?BookId="+ Eval("Id") %>'><asp:Label ID="labTitle" runat="server" Text='<%# Eval("Title") %>' ToolTip='<%# Eval("Title") %>' style="font-weight: 700"></asp:Label></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="labdescription" runat="server" Text='<%# Formatstring(Eval("ContentDescription").ToString(),250) %>' 
                                                ToolTip='<%# Eval("ContentDescription") %>' ForeColor="Black"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                            <s>
                                                原价：<span>￥<asp:Label ID="labPrice" runat="server" 
                                                    Text='<%# FormatPrice(Eval("UnitPrice")) %>'></asp:Label></span></s></td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <span class="style26">现价：</span><span class="style25">￥<asp:Label ID="labnewprice" runat="server" 
                                                    Text='<%# Discount_Price(Eval("UnitPrice").ToString(),0.75) %>'></asp:Label></span></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                折扣：75折</td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                        </td>   
                    </tr>
                </table>
            </td>
            <td rowspan="5" style="padding:0" valign="top">
                
                <uc2:BookImages ID="BookImages1" runat="server" />
                <table align="left" cellpadding="0" cellspacing="0" 
                    style="height: 665px; width: 188px;">
                    <tr>
                        <td bgcolor="#BBE188" class="style31">
                            热点图书排行榜</td>
                    </tr>
                    <tr>
                        <td class="style34 styleBox3" valign="top">
                            <asp:DataList ID="ddlhotbok" runat="server" style="text-align: center" 
                                Width="100%">
                                <ItemTemplate>
                                    <table class="style33"style="border:0px">
                                        <tr>
                                            <td style="cursor:hand;border:0px ; background-color: #66FFCC;">
                                              <a href='<%# "../Book/BookDetail.aspx?BookId="+ Eval("Id") %>'> 
                                               <asp:Label ID="labbooks" runat="server" Text='<%# Formatstring(Eval("Title").ToString(),20) %>' ToolTip='<%# Eval("Title") %>'></asp:Label> 
                                               </a>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
                
            </td>
        </tr>
        <tr>
            <td class="style22" valign="top">
                            <asp:DataList ID="dlhot" runat="server"  
                    RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    <table width="140px">
                                        <tr>
                                            <td style="text-align: left">
                                            <a href='<%# "../Book/BookDetail.aspx?BookId="+ Eval("Id") %>'>
                                                <asp:Image ID="Image4" runat="server" Height="115px" 
                                                    ImageUrl='<%# BindImg(Eval("ISBN"))%>' ToolTip='<%#Eval("Title") %>' 
                                                    Width="95px" />
                                                    </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left">
                                                 <a href='<%# "../Book/BookDetail.aspx?BookId="+ Eval("Id") %>'>
                                                 <asp:Label ID="labTitle" runat="server" style="font-weight: 700" Text='<%# Formatstring(Eval("Title").ToString(),15) %>' ToolTip='<%# Eval("Title") %>'>
                                                 </asp:Label>
                                                 </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                            <s>
                                                原价：<span>￥<asp:Label ID="labPrice" runat="server" 
                                                    Text='<%# FormatPrice(Eval("UnitPrice")) %>'></asp:Label></span></s></td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <span class="style26">现价：</span><span class="style25">￥<asp:Label ID="labnewprice" runat="server" 
                                                    Text='<%# Discount_Price(Eval("UnitPrice").ToString(),0.75) %>'></asp:Label></span></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                折扣：75折</td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                </td>
        </tr>
        <tr>
            <td class="style28">
                <table class="style15">
                    <tr>
                        <td bgcolor="#BBE188">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style35">
                            <asp:Image ID="Image2" runat="server" 
                                ImageUrl="~/Images/06default_1018_85.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DataList ID="dlmonthnew" runat="server" Height="160px" 
                    RepeatDirection="Horizontal" Width="100px" DataSourceID="SqlDataSource2">
                                <ItemTemplate>
                                    <table width="130px">
                                        <tr>
                                            <td style="text-align: left">
                                            <a href='<%# "../Book/BookDetail.aspx?BookId="+ Eval("Id") %>'>
                                                <asp:Image ID="Image4" runat="server" Height="115px" 
                                                    ImageUrl='<%# BindImg(Eval("ISBN"))%>' ToolTip='<%#Eval("Title") %>' 
                                                    Width="95px" />
                                                    </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: left">
                                              <a href='<%# "../Book/BookDetail.aspx?BookId="+ Eval("Id") %>'>
                                              <asp:Label ID="labTitle" runat="server" style="font-weight: 700" Text='<%# Formatstring(Eval("Title").ToString(),15) %>' ToolTip='<%# Eval("Title") %>'></asp:Label>
                                              </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                            <s>
                                                原价：<span>￥<asp:Label ID="labPrice" runat="server" 
                                                    Text='<%# FormatPrice(Eval("UnitPrice")) %>'></asp:Label></span></s></td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <span class="style26">现价：</span><span class="style25">￥<asp:Label ID="labnewprice" runat="server" 
                                                    Text='<%# Discount_Price(Eval("UnitPrice").ToString(),0.75) %>'></asp:Label></span></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                折扣：75折</td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                        </td>
                    </tr>


                   




                </table>
            </td>
        </tr>
        <tr>
            <td class="style28">
                <table class="style15">
                    <tr>
                        <td bgcolor="#BBE188">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style35">
                            <asp:Image ID="Image5" runat="server" 
                                ImageUrl="~/Images/06default_1018_85.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DataList ID="DataList2" runat="server" Height="160px" 
                    RepeatDirection="Horizontal" Width="100px" DataSourceID="SqlDataSource4">
                                <ItemTemplate>
                                    Id:
                                    <asp:Label ID="IdLabel" runat="server" Text='<%# Formatstring(Eval("Title").ToString(),15) %>' />
                                    <br />
                                    Title:
                                    <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                                    <br />
                                    ISBN:
                                    <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                                    <br />
                                    UnitPrice:
                                    <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                                    <br />
                                    <br />
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:BookShopConnectionString %>" SelectCommand="SELECT [Id], [Title], [ISBN], [UnitPrice] FROM [BookHot]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
                        </td>
                    </tr>


                   




                </table>
            </td>
        </tr>
       
        <tr>
            <td class="style30">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

