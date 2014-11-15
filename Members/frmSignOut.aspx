<%@ Page Language="C#" MasterPageFile="~/Members/MemberMasterPage.master" AutoEventWireup="true" CodeFile="frmSignOut.aspx.cs" Inherits="Members_frmSignOut" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h3>Sign Out Completely</h3>
<table>
<tr><td><asp:LinkButton ID="lnkSignOut" runat ="server" onclick="lnkSignOut_Click" >SignOut</asp:LinkButton></td></tr>
</table>
</center>
</asp:Content>

