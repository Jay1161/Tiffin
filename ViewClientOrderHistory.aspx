<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ViewClientOrderHistory.aspx.cs" Inherits="User" %>

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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="InvoiceNo" HeaderText="InvoiceNo" 
                            SortExpression="InvoiceNo" />
                        <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" 
                            SortExpression="OrderDate" />
                        <asp:BoundField DataField="OrderBy" HeaderText="OrderBy" 
                            SortExpression="OrderBy" />
                        <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                            SortExpression="ContactNo" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                        <asp:BoundField DataField="Pincode" HeaderText="Pincode" 
                            SortExpression="Pincode" />
                        <asp:BoundField DataField="OrderDetatils" HeaderText="OrderDetatils" 
                            SortExpression="OrderDetatils" />
                        <asp:BoundField DataField="OrderQtn" HeaderText="OrderQtn" 
                            SortExpression="OrderQtn" />
                        <asp:BoundField DataField="OrderPrice" HeaderText="OrderPrice" 
                            SortExpression="OrderPrice" />
                        <asp:BoundField DataField="DistributorName" HeaderText="DistributorName" 
                            SortExpression="DistributorName" />
                        <asp:BoundField DataField="Status" HeaderText="Status" 
                            SortExpression="Status" />
                    </Columns>
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:db %>" 
                    
                    SelectCommand="SELECT DISTINCT * FROM [DailyOrderInfo] WHERE ([ContactNo] = @ContactNo)">
                    <SelectParameters>
                        <asp:SessionParameter Name="ContactNo" SessionField="ContactNo" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>






    </div>
    </div>
</asp:Content>

