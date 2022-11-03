<%@ Page Title="" Language="C#" MasterPageFile="~/AdmiMasterPage.master" AutoEventWireup="true" CodeFile="ViewAllOrder.aspx.cs" Inherits="User" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:auto ; width:1000px ;margin-left:150px;  background-color:White">

<div style="height: auto; width:1000px; margin-top:1px">



    <table style="width: 100%; height: 97px;">
       
        <tr>
            <td class="style135">
           Client Order Information</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style134" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="InvoiceNo" HeaderText="InvoiceNo" SortExpression="InvoiceNo" />
                        <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                        <asp:BoundField DataField="OrderBy" HeaderText="OrderBy" SortExpression="OrderBy" />
                        <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="OrderDetatils" HeaderText="OrderDetatils" SortExpression="OrderDetatils" />
                        <asp:BoundField DataField="OrderQtn" HeaderText="OrderQtn" SortExpression="OrderQtn" />
                        <asp:BoundField DataField="OrderPrice" HeaderText="OrderPrice" SortExpression="OrderPrice" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT [InvoiceNo], [OrderDate], [OrderBy], [ContactNo], [Address], [City], [OrderDetatils], [OrderQtn], [OrderPrice] FROM [DailyOrderInfo]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>






    </div>
    </div>
</asp:Content>

