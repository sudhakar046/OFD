<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="frmSponsorText.aspx.cs" Inherits="frmSponsorText" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h4>SPONSOR A CHILD</h4>
<fieldset id="Field1" runat ="server" >
<table>
<tr>
<td align="left" >
<p>Sponsor a Child for 1 Year by paying Rs. 4800 / USD 112</p>
    <p>&nbsp;<asp:LinkButton ID="lnk1" runat ="server" onclick="lnk1_Click" > Click Here to Pay</asp:LinkButton>


    </p>
    <p>Sponsor a Child for 2 Years by paying Rs. 9600 / USD 224 <p>&nbsp;<asp:LinkButton 
        ID="LinkButton1"  runat ="server" onclick="LinkButton1_Click"> Click Here to Pay</asp:LinkButton>


    </p>


    </p>
    <p>Sponsor a Child for 3 Years by paying Rs 15000 / USD 335 <p>&nbsp;<asp:LinkButton 
        ID="LinkButton2" runat ="server" onclick="LinkButton2_Click" > Click Here to Pay</asp:LinkButton>


    </p>


    </p>
    <p>Sponsor a Child Forever for 5 years by paying Rs 25000 / USD 581 <p>&nbsp;<asp:LinkButton 
        ID="LinkButton3" runat ="server" onclick="LinkButton3_Click" > Click Here to Pay</asp:LinkButton>


    </p> </p>
</td>
</tr>
</table>
</fieldset>
</center>
</asp:Content>

