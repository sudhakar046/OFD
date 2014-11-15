<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="frmChildGallery1.aspx.cs" Inherits="frmChildGallery1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h4>SPONSOR A CHILD</h4>
<fieldset id="Field1" runat ="server" >
<table>
<tr>
<td align="left">
<asp:LinkButton ID="lnk1" runat ="server" PostBackUrl="~/frmSponsorChild.aspx" >•     Spornsored Children</asp:LinkButton>
</td>
</tr>
<tr>
<td align="left"><asp:LinkButton ID="lnk2" PostBackUrl="~/frmNeedSponsorChild.aspx" runat ="server" >•     Children Need to be Spornsored</asp:LinkButton></td>
</tr>
</table>
</fieldset>
</center>
</asp:Content>

