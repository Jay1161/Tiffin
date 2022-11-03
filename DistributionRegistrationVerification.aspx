<%@ Page Title="User  Form" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DistributionRegistRationVerification.aspx.cs" Inherits="PatientRegistRation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="jquery-2.1.3.min.js" type="text/javascript"></script>
    <link href="jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="jquery-ui.js" type="text/javascript"></script>
    <style type="text/css">
        .text
        {}
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
        .style142
        {
            height: 14px;
            width: 156px;
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
            width: 282px;
        }
        .style150
        {
            height: 30px;
            width: 156px;
            text-align: right;
        }
        .style151
        {
            height: 30px;
            text-align: left;
            width: 306px;
        }
        .style152
        {
            width: 244px;
            color: #000000;
            font-size: 13px;
            font-weight: normal;
            line-height: 19px;
            height: 30px;
            text-align: left;
        }
        .style153
        {
            height: 30px;
            text-align: left;
            width: 282px;
        }
        .style154
        {
            height: 26px;
            width: 156px;
            text-align: right;
        }
        .style155
        {
            height: 26px;
            text-align: left;
            width: 306px;
        }
        .style156
        {
            width: 244px;
            color: #000000;
            font-size: 13px;
            font-weight: normal;
            line-height: 19px;
            height: 26px;
            text-align: left;
        }
        .style157
        {
            height: 26px;
            text-align: left;
            width: 282px;
        }
        .style158
        {
            height: 28px;
            width: 156px;
            text-align: right;
        }
        .style159
        {
            height: 28px;
            text-align: left;
            width: 306px;
        }
        .style160
        {
            width: 244px;
            color: #000000;
            font-size: 13px;
            font-weight: normal;
            line-height: 19px;
            height: 28px;
            text-align: left;
        }
        .style161
        {
            height: 28px;
            text-align: left;
            width: 282px;
        }
        .style162
        {
            height: 31px;
            width: 156px;
            text-align: right;
        }
        .style163
        {
            height: 31px;
            text-align: left;
            width: 306px;
        }
        .style164
        {
            width: 244px;
            color: #000000;
            font-size: 13px;
            font-weight: normal;
            line-height: 19px;
            height: 31px;
            text-align: left;
        }
        .style165
        {
            height: 31px;
            text-align: left;
            width: 282px;
        }
        </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div   style="height:auto; width:auto; margin-left:150px ; background-color:#ffe6e6 ;
         width:1000px">

        <br />

    <table style="background-color:White" class="style139">
        <tr>
            <td class="style150">
                <asp:Label ID="Label6" runat="server">UserName:</asp:Label>
       </td>
            <td class="style151">
                <asp:TextBox ID="txtName" runat="server" CssClass="textEntry"></asp:TextBox>
              
              
              
            </td>
            <td class="style152">
              
              
              
                <asp:RequiredFieldValidator ID="UserNameRequired0" runat="server" 
                    ControlToValidate="txtName" CssClass="failureNotification" 
                    ErrorMessage="User Name is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td class="style153">
                </td>
        </tr>
        <tr>
            <td class="style154">
                <asp:Label ID="Label3" runat="server">Register Address:</asp:Label>
       </td>
            <td class="style155">
                <asp:TextBox ID="txtAddress" runat="server" CssClass="textEntry"></asp:TextBox>
              
              
              
            </td>
            <td class="style156">
              
              
              
                <asp:RequiredFieldValidator ID="UserNameRequired1" runat="server" 
                    ControlToValidate="txtAddress" CssClass="failureNotification" 
                    ErrorMessage="address" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td class="style157">
                </td>
        </tr>
        <tr>
            <td class="style158">
                <asp:Label ID="Label7" runat="server">City:</asp:Label>
       </td>
            <td class="style159">
                <asp:TextBox ID="txtcity" runat="server" CssClass="textEntry"></asp:TextBox>
              
              
              
            </td>
            <td class="style160">
              
              
              
                <asp:RequiredFieldValidator ID="UserNameRequired2" runat="server" 
                    ControlToValidate="txtPassword" CssClass="failureNotification" 
                    ErrorMessage="City" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td class="style161">
                </td>
        </tr>
        <tr>
            <td class="style158">
                <asp:Label ID="Label8" runat="server">State</asp:Label>
                :</td>
            <td class="style159">
                <asp:TextBox ID="txtstate" runat="server" CssClass="textEntry"></asp:TextBox>
              
              
              
            </td>
            <td class="style160">
              
              
              
                <asp:RequiredFieldValidator ID="UserNameRequired3" runat="server" 
                    ControlToValidate="txtPassword" CssClass="failureNotification" 
                    ErrorMessage="State" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td class="style161">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style158">
                Pincode:</td>
            <td class="style159">
                <asp:TextBox ID="txtpincode" runat="server" CssClass="textEntry"></asp:TextBox>
              
              
              
            </td>
            <td class="style160">
              
              
              
                <asp:RequiredFieldValidator ID="UserNameRequired4" runat="server" 
                    ControlToValidate="txtPassword" CssClass="failureNotification" 
                    ErrorMessage="PinCode" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td class="style161">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style162">
                <asp:Label ID="Label4" runat="server">Register MobileNo:</asp:Label>
       </td>
            <td class="style163">
                <asp:TextBox ID="txtMNo" runat="server" CssClass="textEntry" ReadOnly="True"></asp:TextBox>
              
              
              
            </td>
            <td class="style164">
                </td>
            <td class="style165">
                </td>
        </tr>
        <tr>
            <td class="style154">
                <asp:Label ID="UserNameLabel" runat="server">Select Password For Login</asp:Label>
                :</td>
            <td class="style155">
                <asp:TextBox ID="txtPassword" runat="server" CssClass="textEntry" 
                    TextMode="Password"></asp:TextBox>
              
              
              
            </td>
            <td class="style156">
                </td>
            <td class="style157">
                </td>
        </tr>
        <tr>
            <td class="style154">
                </td>
            <td class="style155">
                <asp:Button ID="Button1" runat="server" CssClass="text" Text="Register" 
                    BorderColor="#405572" BorderStyle="Solid" Width="155px" 
                    onclick="Button1_Click" Height="29px" />
              
              
              
            </td>
            <td class="style156">
                </td>
            <td class="style157">
                </td>
        </tr>
        <tr>
            <td class="style142">
            </td>
            <td class="style143" colspan="2">
              
              
              
                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                    ControlToValidate="txtPassword" CssClass="failureNotification" 
                    ErrorMessage="User Name is required." ForeColor="Red" ToolTip="Enter Password.">Enter Password.</asp:RequiredFieldValidator>
            </td>
            <td class="style144">
            </td>
        </tr>
        <tr>
            <td class="style137" colspan="4">
                &nbsp;</td>
        </tr>
            </table>
    
    <div id="dialog" style="display: none">
    </div>
 </div>
</asp:Content>

