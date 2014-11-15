<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmSendOnlineDonations.aspx.cs" Inherits="frmSendOnlineDonations" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h3>Send Online Donaitons</h3>
<center>
<table >
<tr>
<td align="left" style="width: 125px" >Online Account No:</td>
<td align="left" style="font-weight: 700; color: #E39115" >0078453234567</td>
</tr>

<tr>
<td align="left">Sponsor Name:</td>
<td align="left" ><asp:TextBox ID="txtSponsorName" runat ="server" Width="193px" ></asp:TextBox>
<asp:RequiredFieldValidator ID="RFVSName" runat ="server" ControlToValidate="txtSponsorName" ErrorMessage ="*"></asp:RequiredFieldValidator>
</td>
</tr>

<tr>
<td align="left">Amount(Rs):</td>
<td align="left" ><asp:TextBox ID="txtAmount" runat ="server" Width="150px" ></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat ="server" ControlToValidate="txtAmount" ErrorMessage ="*"></asp:RequiredFieldValidator>
</td>
</tr>

<tr>
<td align="left">Bank Name:</td>
<td align="left" ><asp:TextBox ID="txtBankName" runat ="server" Width="150px" ></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat ="server" ControlToValidate="txtBankName" ErrorMessage ="*"></asp:RequiredFieldValidator>
</td>
</tr>

<tr>
<td align="left">Sponsor A/C No:</td>
<td align="left" ><asp:TextBox ID="txtSponsorAccountNo" runat ="server" 
        Width="150px" MaxLength="14" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat ="server" ControlToValidate="txtSponsorAccountNo" ErrorMessage ="*"></asp:RequiredFieldValidator>
        </td>
</tr>
<tr>
<td align="left">Date Of Send:</td>
<td align="left" ><asp:TextBox ID="txtDateOfSend" runat ="server" Width="150px" ></asp:TextBox>
    <cc1:CalendarExtender ID="txtDateOfSend_CalendarExtender" runat="server" 
        Enabled="True" TargetControlID="txtDateOfSend">
    </cc1:CalendarExtender>
    </td>
</tr>

<tr>
<td align="left" valign="top">Comments:</td>
<td align="left" ><asp:TextBox ID="txtComments" runat ="server" 
        TextMode="MultiLine" Height="79px" Width="291px" ></asp:TextBox></td>
</tr>

<tr>
<td colspan="2" align="right" ><asp:Button ID="btnSubmit" runat ="server" 
        Text="Send Donation" onclick="btnSubmit_Click" /></td>
</tr>

<tr>
<td colspan="2" align="right" ><asp:Label ID="lblMsg" runat ="server" Visible ="false" ></asp:Label> </td>
</tr>
</table>

</center>
</asp:Content>

