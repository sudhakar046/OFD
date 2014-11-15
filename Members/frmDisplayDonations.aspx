<%@ Page Language="C#" MasterPageFile="~/Members/MemberMasterPage.master" AutoEventWireup="true" CodeFile="frmDisplayDonations.aspx.cs" Inherits="Administrator_frmDisplayDonations" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h4>Displaying Programms</h4>
<fieldset id="Field1" runat ="server" >
<table align="left" >
<tr>
<td align="left">
<asp:GridView ID="grvPrograms" runat ="server" AutoGenerateColumns="false" 
        ShowHeader="false" GridLines="None" onrowcommand="grvPrograms_RowCommand" >
<Columns>
<asp:TemplateField>
<ItemTemplate>
<table>
<tr>
<td align="left">
<asp:LinkButton ID="lnkProgram" runat ="server" Text='<%#Eval("Title") %>' CommandArgument ='<%#Eval("ProgramCode") %>' Font-Bold="True" ForeColor="#FF0066"></asp:LinkButton>
</td>
</tr>
</table>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
</td>
</tr>
</table>
</fieldset>
<fieldset id="Field2" runat ="server" >
<table >
<tr>
<td >
<div >
<asp:GridView ID="grvSponsors" runat ="server" AutoGenerateColumns="false" >
<Columns>
<asp:BoundField DataField ="ProgramCode" HeaderText="ProgCode" />
<asp:BoundField DataField ="CheckNo" HeaderText="Check/DDNo" />
<asp:BoundField DataField ="BankName" HeaderText="Bank" />
<asp:BoundField DataField ="Place" HeaderText="Place" />
<asp:BoundField DataField ="Name" HeaderText="SenderName" />
<asp:BoundField DataField ="Amount" HeaderText="Amount" />
<asp:TemplateField>
<FooterTemplate>

</FooterTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
</div>
</td>
</tr>
</table>
</fieldset>
</center>
</asp:Content>

