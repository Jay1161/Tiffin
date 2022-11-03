<%@ Page Language="C#" MasterPageFile="~/DistributorMasterPage.master" AutoEventWireup="true" CodeFile="ClientVerifyDetails.aspx.cs" Inherits="home1" Title="::::" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <style type="text/css">
        .style65
        {
            text-align: left;
            height: 62px;
        }
        .style67
        {
            width: 130px;
            font-family: "Lato Light";
            font-size: 14pt;
        }
        .style76
        {
            width: 254px;
            text-align: left;
        }
        .style79
        {
            font-family: "Lato Light";
            font-size: 14pt;
        }
        .style81
        {
            text-align: left;
            font-family: "Lato Light";
            font-size: 14pt;
        }
        .style82
        {
            width: 254px;
            text-align: left;
            font-family: "Lato Light";
            font-size: 14pt;
        }
        .style83
        {
            text-align: left;
            font-family: "Lato Light";
            font-size: 14pt;
            width: 226px;
        }
        .style85
        {
            width: 226px;
            font-family: "Lato Light";
            font-size: 14pt;
        }
        .style86
        {
            width: 254px;
            text-align: left;
            height: 62px;
        }
        .style87
        {
            text-align: left;
            font-family: "Lato Light";
            font-size: 14pt;
            width: 226px;
            height: 62px;
        }
        .style88
        {
            text-align: left;
            font-family: "Lato Light";
            font-size: 14pt;
            width: 226px;
            height: 48px;
        }
        .style89
        {
            height: 48px;
        }
           .style144
           {
               color: #FFFFFF;
               font-weight: normal;
           }
           .style145
           {
               font-family: "Lato Light";
               font-size: x-large;
               color: #CC0000;
           }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
<div style="height:auto ; width:auto; margin-top:20px">

<div style="height: auto; width:1000px; margin-left:150px; color:Black">
    <table style="border-style: solid; border-width: 3px; padding: 1px 4px; width: 100%; height:250px; background-color:#F1F4F7">

      
      
          <tr >
            <td class="style61">
                &nbsp;
                </td>
            <td class="style62">
               
                <table style="border-style: solid; border-width: 1px; padding: 1px 4px; width: 100%; height: 289px; background-image:url(Digitalpassport/dpbg.png);">
                    <tr>
                        <td class="style145" colspan="3">
                            <strong>Client Details</strong></td>
                    </tr>
                    <tr>
                        <td rowspan="4" class="style76">
                            <br />
                            <asp:Image ID="photo" runat="server" Height="202px" Width="165px" 
                                CssClass="style79" />
                        </td>
                        <td class="style88">
                       Client AadharNo:</td>
                        <td style="text-align: left" class="style89">
                            <asp:Label ID="cano" runat="server" CssClass="style67" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style83">
                      Client Name:</td>
                        <td style="text-align: left">
                            <asp:Label ID="cname" runat="server" CssClass="style67" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style83" style="text-align: left">
                   Is Link Account:</td>
                        <td class="style81">
                            <asp:Label ID="islink" runat="server" CssClass="style67" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style83" style="text-align: left">
                   Link AadharNo:</td>
                        <td style="text-align: left">
                            <asp:Label ID="lano" runat="server" CssClass="style81" Font-Size="14pt" 
                                style="text-align: left" Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style86">
                            </td>
                        <td class="style87">
                   Relation:</td>
                        <td class="style65">
                            <asp:Label ID="relation" runat="server" CssClass="style81" Font-Size="14pt" 
                                Font-Names="Lato Light"></asp:Label>
                        </td>
                    </tr>
                 
                    <tr>
                        <td class="style85">
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                Text="Verify And Issue Ration" />
                        </td>
                        <td class="style79">
                            &nbsp;</td>
                    </tr>
                </table>
                &nbsp;&nbsp;</td>
        </tr>

          <tr >
            <td class="style6">
                &nbsp;
                </td>
              </span><span class="style144">
            <td class="style60">
               
               

       
                  
                &nbsp;&nbsp;</td>
        </tr>


        </table>
</div>


</div>

    </span></span></span></span>

    </span>

    <span class="style2"><span class="style2"><span class="style2"><span class="style2">

</span></span></span></span></asp:Content>

