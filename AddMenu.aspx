<%@ Page Title="" Language="C#" MasterPageFile="~/DistributorMasterPage.master" AutoEventWireup="true" CodeFile="AddMenu.aspx.cs" Inherits="User" %>

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
        .auto-style1 {
            color: #000066;
            font-weight: 700;
            font-size: large;
            text-align: left;
            width: 29%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:auto ; width:1000px ;margin-left:150px; background-color:#FFFFB7">

<div style="height: auto; width:1000px; margin-top:1px">



    <table style="width: 100%; height: 97px;">
       
        <tr>
            <td class="style135" colspan="11">
                Add Daily Menu</td>
            <td class="style136">
                &nbsp;</td>
        </tr>
       
        <tr>
            <td class="auto-style1">
                Service Provider Name:</td>
            <td class="style138">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
              
            </td>
            <td class="style141">
                &nbsp;</td>
            <td class="style142">
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
            <td class="style140">
                &nbsp;</td>
            <td class="style136">
                &nbsp;</td>
        </tr>
       
        <tr>
            <td class="auto-style1">
                Select Day:</td>
            <td class="style135" colspan="2">
                <span class="style2">
                <asp:DropDownList ID="ddlDay" runat="server" Height="17px" Width="164px">
                    <asp:ListItem>Monday</asp:ListItem>
                    <asp:ListItem>Tuesday</asp:ListItem>
                    <asp:ListItem>Wednesday</asp:ListItem>
                    <asp:ListItem>Thursday</asp:ListItem>
                    <asp:ListItem>Friday</asp:ListItem>
                    <asp:ListItem>Saturday</asp:ListItem>
                    <asp:ListItem>Sunday</asp:ListItem>
                </asp:DropDownList>
                          
            </td>
            <td class="style142">
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
            <td class="style140">
                &nbsp;</td>
            <td class="style136">
                &nbsp;</td>
        </tr>
       
        <tr>
            <td class="auto-style1">
                Select Tiffin Type:</td>
            <td class="style135" colspan="2">
                <span class="style2">
                <asp:DropDownList ID="ddlType" runat="server" Height="17px" Width="164px">
                    <asp:ListItem>Morning Breakfast</asp:ListItem>
                    <asp:ListItem>Lunch</asp:ListItem>
                    <asp:ListItem>Dinner</asp:ListItem>
                </asp:DropDownList>
                          
            </td>
            <td class="style142">
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
            <td class="style140">
                &nbsp;</td>
            <td class="style136">
                &nbsp;</td>
        </tr>
       
        <tr>
            <td class="auto-style1">
                Add Tiffin menu Description</td>
            <td class="style135" colspan="2">
                <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
              
            </td>
            <td class="style142">
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
            <td class="style140">
                &nbsp;</td>
            <td class="style136">
                &nbsp;</td>
        </tr>
       
        <tr>
            <td class="auto-style1">
                Price:</td>
            <td class="style135" colspan="2">
                <span class="style2">
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
              
            </td>
            <td class="style142">
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
            <td class="style140">
                &nbsp;</td>
            <td class="style136">
                &nbsp;</td>
        </tr>
       
        <tr>
            <td class="style137">
                &nbsp;</td>
            <td class="style135" colspan="2">
                <span class="style2">
                <asp:Button ID="Button1" runat="server" Text="Add Menu" onclick="Button1_Click" />
                              
            </td>
            <td class="style142">
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

