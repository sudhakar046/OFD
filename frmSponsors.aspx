<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="frmSponsors.aspx.cs" Inherits="frmSponsors" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<fieldset id="Field1" runat ="server" >
<table>
<tr>
<td><asp:Image ID="imgSponsor" runat ="server" ImageUrl="~/Images/SponserImg.JPG" Width="450px" Height="300px" /></td>
</tr>
</table>
</fieldset>
<fieldset id="Field2" runat ="server" >
<table align="left" style="width: 453px" >
<tr><td align="left" ><b>Rs. 4800/- For a Year</b></td></tr>
<tr><td><br /></td></tr>
<tr><td align="center" ><asp:LinkButton ID="lnkSelectChild" runat ="server" PostBackUrl="~/frmNeedSponsorChild.aspx" >Select Child</asp:LinkButton></td></tr>
</table>
</fieldset>
</center>
</asp:Content>

