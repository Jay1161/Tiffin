<%@ Page Title="" Language="C#" MasterPageFile="~/DistributorMasterPage.master" AutoEventWireup="true" CodeFile="UpdateOrderStatus.aspx.cs" Inherits="User" %>

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
        .style136
        {
            width: 1%;
        }
        .style137
        {
            color: #000066;
            font-weight: 700;
            font-size: x-large;
            text-align: left;
            width: 29%;
        }
        .style138
        {
            color: #000066;
            font-weight: 700;
            font-size: x-large;
            text-align: left;
            width: 128px;
        }
        .style140
        {
            color: #000066;
            font-weight: 700;
            font-size: x-large;
            text-align: left;
            width: 2%;
        }
        .style141
        {
            color: #000066;
            font-weight: 700;
            font-size: x-large;
            text-align: left;
            width: 46%;
        }
        .style142
        {
            color: #000066;
            font-weight: 700;
            font-size: x-large;
            text-align: left;
            width: 11%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:auto ; width:1000px ;margin-left:150px; background-color:#FFFFB7">

<div style="height: auto; width:1000px; margin-top:1px">



    <table style="width: 100%; height: 97px;">
       
        <tr>
            <td class="style135" colspan="11">
                Update
          Daily Order Information</td>
            <td class="style136">
                &nbsp;</td>
        </tr>
       
        <tr>
            <td class="style137">
                Select Invoice No:</td>
            <td class="style138">
                <asp:DropDownList ID="ddlInvoiceNo" runat="server" 
                    Height="16px" Width="155px">
                </asp:DropDownList>
              
            </td>
            <td class="style141">
                <span class="style2">
                <asp:DropDownList ID="ddlStatus" runat="server" Height="17px" Width="164px">
                    <asp:ListItem>Deliver</asp:ListItem>
                    <asp:ListItem>HouseClose</asp:ListItem>
                    <asp:ListItem>NotAccept</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style142">
                <span class="style2">
                <asp:Button ID="Button1" runat="server" Text="Find" onclick="Button1_Click" />
                </td>
            <td class="style140">
                &nbsp;</td>
            <td class="style140">
                &nbsp;</td>
            <td class="style140">
                &nbsp;</td>
            <td class="style140">
                &nbsp;</td>
            <td class="style140">
                &nbsp;</td>
            <td class="style140">
                &nbsp;</td>
            <td class="style140">
                &nbsp;</td>
            <td class="style136">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style134" colspan="12">
                &nbsp;</td>
        </tr>
    </table>






    </div>
    </div>
</asp:Content>

