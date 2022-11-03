<%@ Page Title="User RegistRation Form" Language="C#" MasterPageFile="~/DistributorMasterPage.master" AutoEventWireup="true" CodeFile="ClientVerify.aspx.cs" Inherits="PatientRegistRation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="jquery-2.1.3.min.js" type="text/javascript"></script>
    <link href="jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="jquery-ui.js" type="text/javascript"></script>
    <style type="text/css">
        .style14
        {
            font-size: x-large;
            color: #368099;
            height: 53px;
        }
        .text
        {}
        .style134
        {
            height: 132px;
            text-align: left;
            width: 304px;
        }
        .style136
        {
            height: 132px;
            width: 459px;
            text-align: right;
        }
        .style137
        {
            text-align: left;
            font-family: Lato;
            color: #333333;
            font-weight: normal;
            font-size: 12px;
        }
        .style139
        {
            width: 1006px;
            height: auto;
        }
        .style140
        {
            height: 132px;
            text-align: left;
        }
        .style141
        {
            width: 244px;
            color: #000000;
            font-size: 13px;
            font-weight: normal;
            line-height: 19px;
            height: 132px;
            text-align: left;
        }
        .style142
        {
            height: 14px;
            width: 459px;
            text-align: right;
        }
        .style143
        {
            height: 14px;
            text-align: left;
        }
        .style144
        {
            height: 14px;
            text-align: left;
            width: 304px;
        }
        </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div   style="height:auto; width:auto; margin-left:150px ; background-color:#ffe6e6 ;
         width:1000px">

        <br />

    <table style="background-color:White" class="style139">
        <tr>
            <td colspan="4" class="style14">
              Scan Client Card</td>
        </tr>
        <tr>
            <td class="style136">
      Enter Aadhar No:</td>
            <td class="style140">
                <asp:TextBox ID="eno" runat="server" BorderColor="#304D75" 
                    BorderStyle="Dotted" BorderWidth="2px" Height="25px" Width="150px" 
                    MaxLength="12" ontextchanged="eno_TextChanged"></asp:TextBox>
              
              
              
            </td>
            <td class="style141">
                &nbsp;</td>
            <td class="style134">
                <asp:Image ID="Image3" runat="server" Height="100px" 
                    ImageUrl="~/image/new user.jpg" />
            </td>
        </tr>
        <tr>
            <td class="style142">
            </td>
            <td class="style143" colspan="2">
              
              
              
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="eno" ErrorMessage="Enter 12 Digit Aadhar No"></asp:RequiredFieldValidator>
            </td>
            <td class="style144">
            </td>
        </tr>
        <tr>
            <td class="style137" colspan="4">
                <asp:Image ID="Image4" runat="server" Height="85px" 
                    ImageUrl="~/image/footer.jpg" Width="1000px" />
            </td>
        </tr>
            </table>
    
    <div id="dialog" style="display: none">
    </div>
 </div>
</asp:Content>

