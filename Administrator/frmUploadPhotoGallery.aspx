<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmUploadPhotoGallery.aspx.cs" Inherits="Administrator_frmUploadPhotoGallery" Title="Untitled Page" %>

<%@ Register src="../UserControls/BrowseImage.ascx" tagname="BrowseImage" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h3>Upload Gallery for Programs</h3>
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
<fieldset id="Field2" runat ="server" visible="false"  >
<table>
<tr><td>Upload Photo Graph</td></tr>
<tr><td>
    <uc1:BrowseImage ID="BrowseImage1" runat="server" />
    </td></tr>
    <tr><td><asp:Button ID="btnSubmit" runat ="server" Text="Upload Gallery" 
            onclick="btnSubmit_Click" /></td></tr>
            <tr><td><asp:Label ID="lblMsg" runat ="server" Visible ="false" ></asp:Label></td></tr>
</table>
</fieldset>
</center>
</asp:Content>

