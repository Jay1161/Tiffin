<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoginHome.aspx.cs" Inherits="home1" Title=":: DTS ::" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles.css" rel="stylesheet" type="text/css" />
    <link href="templatemo_style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style134
        {
            color: #E7A91F;
        }
        .style5
        {
            text-align: right;
            color:Black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:5px; width:1000px; background-color:Transparent"></div>
 
    
    <%--slider end--%>
 <div style="height:9px; width:1000px; background-color:Transparent"></div>
   <div style="height: auto; width:1000px; margin-left:145px">
   
                   
    
       <table style="width: 100%; height: auto;">
           <tr>
               <td class="style135">
                   <asp:ImageButton ID="ImageButton1" runat="server" Height="300px" 
                       Width="315px" ImageUrl="~/image/UserLOGIN1.jpeg" 
                       PostBackUrl="~/ClientLogin.aspx" />
               </td>
               <td class="style135">
                   <asp:ImageButton ID="ImageButton2" runat="server" Height="301px" 
                       Width="321px" ImageUrl="~/image/distributor.jpg" 
                       PostBackUrl="~/DistributorLogin.aspx" />
               </td>
               <td class="style135">
                   <asp:ImageButton ID="ImageButton3" runat="server" Height="301px" 
                       Width="343px" ImageUrl="~/image/ADmin1.png" 
                       PostBackUrl="~/AdminStaffLogin.aspx" />
               </td>
           </tr>

           
          
          
       </table>
   
                  
    
    </div>

   



</asp:Content>

