<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DistributorLogin.aspx.cs" Inherits="SecureNo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/Default1.css" rel="stylesheet" type="text/css" />
    <link href="Default1.css" rel="stylesheet" type="text/css" />
    <script src="jquery-2.1.3.min.js" type="text/javascript"></script>
    <script src="jquery-ui.js" type="text/javascript"></script>
    <link href="jquery-ui.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto; width:1000px; margin-top:-50px; margin-left:150px">

    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="background-color:#FFFFB7" >
        <tr>
            <th height="170" colspan="3" scope="col">
                &nbsp;
            </th>
        </tr>
       
        <tr>
            <th scope="row">
                &nbsp;
            </th>
            <td align="left" valign="middle">
                <table  width="332" border="0" align="center" cellpadding="0" cellspacing="0" style="border: 1px solid #e4dfdf; margin-top:-50px; margin-left:150px">
                    <tr>
                        <th height="30" colspan="3" scope="col">
                            &nbsp;
                        </th>
                    </tr>
                    <tr>
                        <th width="30" rowspan="8" scope="row">
                            &nbsp;
                        </th>
                        <td align="left" valign="top" class="title" style="width: auto;">
                            <div class="login_icon">
                            </div>
                            &nbsp; &nbsp; Login to Tiffin Distributor Panel 
                        </td>
                        <td width="30" rowspan="8">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span id="lblErrorMessage" class="validation_summary"></span>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="caption_gray" style="padding-top: 10px;">
                            User name
                        </td>
                    </tr>
                    <tr>
                        <td align="left" scope="row">
                            &nbsp;<span id="RequiredFieldValidator1" style="color:Red;display:none;">Please enter user name!</span>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="login_input"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="caption_gray" style="padding-top: 10px;">
                            Password
                        </td>
                    </tr>
                    <tr>
                        <td align="left" scope="row">
                            &nbsp;<span id="RequiredFieldValidator2" style="color:Red;display:none;">Please enter password!</span>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="login_input" 
                                TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 10px; padding-bottom: 8x;">
                            <table width="100%" height="32" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <th height="32" align="left" valign="middle" scope="col">
                                        &nbsp;<asp:Button ID="btnLogin" runat="server" s Text="Login" 
                                            BackColor="#FF8000" BorderStyle="None" Font-Size="12pt" ForeColor="White" 
                                            Height="40px" onclick="btnLogin_Click" Width="101px" />
                                    </th>
                                    <th scope="col">
                                        &nbsp;
                                    </th>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 10px;">
                      
                        </td>
                    </tr>
                    <tr>
                        <th height="30" colspan="3" scope="row">
                            &nbsp;
                        </th>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <th colspan="3" scope="row">
                &nbsp;
            </th>
        </tr>
    </table>
    <script type="text/javascript">
        function ShowPopup(message) {
            $(function () {
                $("#dialog").html(message);
                $("#dialog").dialog({
                    title: "VCARE SYSTEM ERROR",
                    buttons: {
                        Close: function () {
                            $(this).dialog('close');
                        }
                    },
                    modal: true
                });
            });
        };
    </script>
    <div id="dialog" style="display: none">
    </div>

</div>
</asp:Content>

