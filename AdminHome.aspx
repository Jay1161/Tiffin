<%@ Page Title="" Language="C#" MasterPageFile="~/AdmiMasterPage.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="ClerkHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style134
        {
            color: #FFFFFF;
            font-weight: normal;
        }
        .style135
        {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="height:146px; width:1000px; margin-left:150px; ">
     <table style="width: 100%; height: 180px; color:Black">
         <tr>
             <td>
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
         </tr>
         </span><span class="style134">
         <tr>
             <td colspan="3" style="text-align: left" class="style135">
                 Welcome:<asp:Label ID="name" runat="server"></asp:Label>
             </td>
         </tr>
         </span><span class="style2">
         <tr>
             <td>
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
         </tr>
     </table>
</div>
</asp:Content>

