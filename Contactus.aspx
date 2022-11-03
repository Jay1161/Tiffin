<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style138
    {            text-align: left;
        }
        .style139
        {
            color: #C0493B;
            font-weight: normal;
            font-size: 45pt;
        }
        .style140
        {
            font-size: 36pt;
            color: #C0493B;
        }
        .style141
        {
            color: #C0493B;
            font-weight: normal;
            font-size: 36pt;
        }
        .style143
        {
            text-align: left;
            height: 42px;
            width: 82%;
            color: #FFFFFF;
            font-weight: normal;
            font-size: 14px;
        }
        .style146
        {
            text-align: left;
            height: 44px;
            width: 82%;
            color: #FFFFFF;
            font-weight: normal;
            font-size: 14px;
        }
        .style156
        {
            text-align: left;
            height: 82px;
        }
        .style158
        {
            text-align: left;
            height: 42px;
            width: 202px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
            font-weight: bold;
        }
        .style159
        {
            text-align: left;
            height: 44px;
            width: 202px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
            font-weight: bold;
        }
        .style162
        {
            text-align: left;
            height: 46px;
            width: 202px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
            font-weight: bold;
        }
        .style163
        {
            text-align: left;
            height: 46px;
            width: 82%;
            color: #C0493B;
            font-weight: normal;
            font-size: 45pt;
        }
        .style164
        {
            text-align: left;
            height: 46px;
            width: 82%;
            color: #FFFFFF;
            font-weight: normal;
            font-size: 14px;
        }
        .style165
        {
            text-align: left;
            height: 46px;
            width: 202px;
            font-family: Arial, Helvetica, sans-serif;
            color: #000000;
            font-weight: bold;
            font-size: small;
        }
        .style166
        {
            color: #FFFFFF;
            font-weight: bold;
            font-size: small;
        }
        .style167
        {
            font-size: small;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:auto;width:1000px">
 <div style="height: auto;width:1000px; margin-left:150px; margin-top:15px; background-color:#ffebe6;">

     <table style="width: 100%; height: 371px; color:Black; background-color:#ffebe6">
         <tr>
             <td style="text-align: left" class="style138" colspan="2">
                 <h1 class="article-title" 
                     style="box-sizing: border-box; padding: 0px 10px; margin-top: 5px !important; margin-right: 0px; margin-bottom: 0.5rem; margin-left: 0px; font-family: 'Open Sans', sans-serif; font-weight: normal; font-style: normal; color: rgb(192, 73, 59); text-rendering: optimizeLegibility; line-height: 1.4; font-size: 2.2rem; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                     Contact Us</h1>
                
             </td>
         </tr>

      
         <tr>
             <td style="text-align: left" class="style158">
                 <span class="style167">&nbsp; * Enter FullName :</span><span class="style166">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 
          </span></td>
             <td class="style143">
                 <asp:TextBox ID="fname" runat="server" CssClass="textbox"></asp:TextBox>

                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                     ControlToValidate="fname" ErrorMessage="**Enter Name"></asp:RequiredFieldValidator>

             </td>
         </tr>
         <tr>
             <td class="style159">
                 <span class="style167">&nbsp; *Enter Email Address:</span><span 
                     class="style166">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 
          </span></td>
             <td class="style146">
                 <asp:TextBox ID="email" runat="server" CssClass="textbox"></asp:TextBox>

                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                     ControlToValidate="email" ErrorMessage="**Enter Email Address"></asp:RequiredFieldValidator>

             </td>
         </tr>
         <tr>
             <span class="style2">
             <td class="style162">
                 <span class="style167">&nbsp;* Mobile Number:&nbsp;</span><span 
                     class="style166">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 
          </span></td>

          </span>
             <td class="style164">
                 <asp:TextBox ID="mno" runat="server" CssClass="textbox"></asp:TextBox>

                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                     ControlToValidate="mno" ErrorMessage="**Enter MobileNo"></asp:RequiredFieldValidator>

             </td>

         </tr>

          </span>
         <tr>
             <td class="style165">
                 * Write Comment :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
             <td class="style163">
                 <asp:TextBox 
                     ID="comment" runat="server" TextMode="MultiLine" CssClass="textbox"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                     ControlToValidate="comment" ErrorMessage="**Enter Comment" 
                     style="font-size: medium"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td class="style156" colspan="2">
                 <span class="style139">
                 <span class="style2">
                 <asp:Button ID="Button1" runat="server" Text="Submit FeedBack" 
                     BackColor="#C2A35E" CssClass="textbox" Font-Size="15pt" ForeColor="Red" 
                     onclick="Button1_Click" />

          </span>
</span></td>
         </tr>
         </table>

     </div>
 </div>



</asp:Content>

