<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmUploadNewsLetters.aspx.cs" Inherits="Administrator_frmUploadNewsLetters" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h3>Upload News Letters</h3>
<fieldset id="Field1" runat ="server" >
<table align="left">
<tr><td align="left" >Issue</td><td align="left"><asp:TextBox ID="txtIssue" runat ="server" ></asp:TextBox><asp:RequiredFieldValidator ID="RFVIssue" runat ="server" ControlToValidate="txtIssue" ErrorMessage ="*"></asp:RequiredFieldValidator></td></tr>
<tr><td align="left" valign="top" >Story</td><td align="left" >
    <asp:TextBox ID="txtStory" runat ="server" TextMode="MultiLine" Height="257px" 
        Width="386px"  ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat ="server" ControlToValidate="txtStory" ErrorMessage ="*"></asp:RequiredFieldValidator></td></tr>
<tr><td align="left" >Month</td><td align="left"><asp:TextBox ID="txtMonth" runat ="server" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat ="server" ControlToValidate="txtMonth" ErrorMessage ="*"></asp:RequiredFieldValidator></td></tr>

</table>
</fieldset>
<fieldset id="Field2" runat ="server" >
<legend>Submit Data</legend>
<table>
<tr><td><asp:Button ID="btnSubmit" runat ="server" Text="Submit" 
        onclick="btnSubmit_Click" /><asp:Button ID="btnReset" runat ="server" 
        Text="Reset" CausesValidation="false" onclick="btnReset_Click" /></td></tr>
<tr><td><asp:Label ID="lblMsg" runat ="server" Visible="false" ></asp:Label></td></tr>
</table>
</fieldset>
</center>
</asp:Content>

