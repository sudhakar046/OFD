<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmLogin.aspx.cs" Inherits="frmLogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h3>Login Here</h3>
<fieldset id="field1" runat ="server" >
<table>
<tr>
<td>UserName</td>
<td><asp:TextBox ID="txtUserName" runat ="server" ></asp:TextBox><asp:RequiredFieldValidator ID="RFVUserName" runat ="server" ControlToValidate ="txtUserName" ErrorMessage="*"></asp:RequiredFieldValidator> </td>
</tr>
<tr>
<td>Password</td>
<td><asp:TextBox ID="txtPassword" TextMode="Password" MaxLength ="8" runat ="server" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat ="server" ControlToValidate ="txtPassword" ErrorMessage="*"></asp:RequiredFieldValidator> </td>
</tr>
<tr><td colspan="3" align="right" ><asp:Button ID="btnLogin" runat ="server" 
        Text="Login" onclick="btnLogin_Click" /><asp:Button ID="btnClear" runat ="server" Text="Clear" CausesValidation ="false" /></td></tr>
        
        <tr><td colspan="3"  ><asp:Label ID="lblMsg" runat ="server" Visible ="false" ></asp:Label></td></tr>
</table>
</fieldset>
</center>
</asp:Content>

