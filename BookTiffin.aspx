<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="BookTiffin.aspx.cs" Inherits="NewInvoice" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>  

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .autocomplete_completionListElement
{
    background-color: white;
    color: windowtext;
    border-width: 1px;
    border-style: solid;
    overflow: auto;
    max-height: 100px;
    text-align: left;
    list-style-type: none;
    padding:0px;
}
        .style21
        {
            text-align: center;
            font-size: xx-large;
            color: #0066FF;
        }
        .style37
        {
            border: 1px solid #4E667D;
            padding: 1px;
            text-align: left;
        }
        .style43
        {
             font-size: large;
            color: #0066FF;
        }
        .style45
        {
            font-size: x-large;
            color: #3399FF;
        }
        .style60
        {
            width: 10%;
        }
        .style61
        {
            border: 1px solid #4E667D;
            padding: 1px;
            width: 600px;
            text-align: left;
        }
        .style62
        {
            width: 600px;
        }
        .style139
        {
            border: 1px solid #4E667D;
            width: 10%;
            text-align: left;
            color: #000000;
        }
        .style143
        {
            width: 11%;
        }
        .style144
        {
            border: 1px solid #4E667D;
            padding: 1px;
            width: 294px;
            text-align: left;
            color: #000000;
        }
    .style145
    {
        text-align: left;
    }
    .style146
    {
        text-align: left;
        color: #000000;
        font-weight: normal;
        font-size: 14px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="border-style: solid; border-width: 1px; padding: 1px 4px; height:auto; width:1000px; margin-left:150px;  ">
      <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true" >
    </asp:ScriptManager>
       
    <table style="width:80%;">
        <tr>
            <td colspan="8">
                &nbsp; &nbsp; &nbsp;
                </td>
        </tr>
        <tr>
            <td colspan="8" class="style21">
                Order Issue TAX INVOICE | Orignal</td>
        </tr>
        <tr>
            <td class="style144" colspan="2">
                Invoice No :</td>
            <td class="style37" colspan="3">
                <asp:TextBox ID="invoiceno" runat="server" CssClass="textbox" ></asp:TextBox>
            </td>
          
        </tr>
        <tr>
            <td class="style144" colspan="2">
                Payment&nbsp; Term:</td>
            <td class="style37" colspan="3">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    CssClass="textbox" AutoPostBack="True">
                      <asp:ListItem>COD Payment </asp:ListItem>
                      
                </asp:DropDownList>
            </td>
            
        </tr>
        <tr>
            <td class="style144" colspan="2">
                Select Date For Deliver :</td>
            <td class="style37" colspan="3">
                <span class="style2">
                <asp:TextBox ID="idate" runat="server" CssClass="textbox" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="idate" ErrorMessage="Select Date For Order"></asp:RequiredFieldValidator>
                </span>
            </td>
           
        </tr>
        <tr class="style45">
            <td class="style37" colspan="8">
                Client Details</td>
        </tr>
        <tr>
            <td class="style139">
                &nbsp;
            </td>
            <td class="style61" colspan="2">
    
&nbsp;
                </td>
            <td colspan="2" style="color: #000000" class="style145">
                Select Product:</td>
            <td class="style145">
                <asp:DropDownList ID="ddlProduct" runat="server">
                    <asp:ListItem Value="50">BreakFast</asp:ListItem>
                    <asp:ListItem Value="120">Lunch</asp:ListItem>
                    <asp:ListItem Value="100">Dinner</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style139">
                Client Name:</td>
            <td class="style61" colspan="2">
                <asp:TextBox ID="clientname" runat="server" CssClass="textbox"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ErrorMessage="Client Name" ControlToValidate="clientname"></asp:RequiredFieldValidator>
            </td>
            <td colspan="2" class="style145">
                Select Qtn:</td>
            <td class="style146">
                <asp:TextBox ID="txtQtn" runat="server" Width="158px"></asp:TextBox>
                <br />
                <span class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="txtQtn" ErrorMessage="EnterQtn"></asp:RequiredFieldValidator>
                </span>
            </td>
        </tr>
        <tr>
            <td class="style139">
                Client Address Line1:</td>
            <td class="style61" colspan="2">
                <asp:TextBox ID="add1" runat="server" CssClass="textbox"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ErrorMessage="Address " ControlToValidate="add1"></asp:RequiredFieldValidator>
            </td>
            <span class="style2">
            <td class="style145" colspan="2">
                Select Distributor:</td>
            </span>
            <td>
                <span class="style2">
                <asp:DropDownList ID="ddlDname" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="DName" DataValueField="DName" Height="16px" Width="158px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:db %>" 
                    SelectCommand="SELECT DISTINCT [DName] FROM [DistributorInfo] WHERE ([City] = @City)">
                    <SelectParameters>
                        <asp:SessionParameter Name="City" SessionField="City" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </span>
            </td>
        </tr>
        <tr>
            <td class="style139">
                Client State:</td>
            <td class="style61" colspan="2">
                <asp:TextBox ID="add2" runat="server" CssClass="textbox"></asp:TextBox>
                <br />
            </td>
            <td colspan="2">
                &nbsp;</td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="style139">
                Client City:</td>
            <td class="style61" colspan="2">
                <asp:TextBox ID="city" runat="server" CssClass="textbox"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ErrorMessage="ClientCity" ControlToValidate="city"></asp:RequiredFieldValidator>
            </td>
            <td colspan="3">
                <span class="style2">
                <asp:Button ID="save0" runat="server" BackColor="#84C1FF" BorderColor="#0066FF" 
                    BorderStyle="Solid" BorderWidth="2px" CausesValidation="False" Height="40px" 
                    onclick="Button4_Click" Text="Order" Width="164px" />
                </span>
            </td>
        </tr>
        <tr>
            <td class="style139">
                Client Contact No:</td>
            <td class="style37" colspan="2">
                <asp:TextBox ID="cmno" runat="server" CssClass="textbox"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ErrorMessage="Client Contact No" ControlToValidate="cmno"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style139">
                Client Pin Code:</td>
            <td class="style37" colspan="6">
                <asp:TextBox ID="pincode" runat="server" CssClass="textbox"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ErrorMessage="PinCode" ControlToValidate="pincode"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style60">
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td class="style62" colspan="3">
                &nbsp;</td>
            <td>
                
                &nbsp;</td>
            <td class="style143">
                &nbsp;</td>
            <td class="style43">
                &nbsp;</td>
            <td class="style143">
                &nbsp;</td>
        </tr>
        </table>
 
</div>

</asp:Content>

