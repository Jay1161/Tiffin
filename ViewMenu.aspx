<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewMenu.aspx.cs" Inherits="User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 156px;
        }
        .style134
        {
            color: #000000;
            font-weight: normal;
            font-size: 14px;
            }
        .style135
        {
            color: #000066;
            font-weight: 700;
            font-size: x-large;
            text-align: left;
        }
    .auto-style1 {
        width: 1%;
    }
    .auto-style2 {
        color: #000066;
        font-weight: 700;
        font-size: x-large;
        text-align: left;
        width: 348px;
    }
    .auto-style3 {
        color: #000066;
        font-weight: 700;
        font-size: x-large;
        text-align: left;
        width: 53%;
    }
    .auto-style4 {
        color: #000066;
        font-weight: 700;
        font-size: x-large;
        text-align: left;
        width: 3%;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:auto ; width:1000px ;margin-left:150px;  background-color:#FFFFB7">

<div style="height: auto; width:1000px; margin-top:1px">



    <table style="width: 100%; height: 97px;">
       
        <tr>
            <td class="style135" colspan="4">
                Daily Tiffin Menu Description Information</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
       
        <tr>
            <td class="auto-style2">
                Select Service Provider</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ServiceProviderName" DataValueField="ServiceProviderName" Height="19px" Width="224px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT DISTINCT [ServiceProviderName] FROM [MenuInfo]"></asp:SqlDataSource>
&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Find" />
            </td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
       
        <tr>
            <td class="style135" colspan="4">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style134" colspan="5">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
            </td>
        </tr>
    </table>






    </div>
    </div>
</asp:Content>

