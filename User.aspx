<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

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
            width: 185px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:auto ; width:1000px ;margin-left:150px;  background-color:White">

<div style="height:100px; width:1000px; margin-top:1px">



    <table style="width: 100%; height: 97px;">
       
        <tr>
            <td class="style134">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Welcome :</td>
            <td style="text-align: left">
                <asp:Label ID="Label1" runat="server" ForeColor="#22ACE4" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style134">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>






    </div>
    </div>
</asp:Content>

