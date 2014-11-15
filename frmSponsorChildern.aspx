<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmSponsorChildern.aspx.cs" Inherits="frmSponsorChildern" Title="Untitled Page" %>

<%@ Register src="UserControls/BindImage.ascx" tagname="BindImage" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h4>Sponsor A Child</h4>
<fieldset id="Field1" runat ="server" >
<table align="left" >
<tr>
<td align="left" colspan="2" >
    <uc1:BindImage ID="BindImage1" runat="server" />
    </td>
</tr>
<tr>
<td>Name</td>
<td align="left"><asp:Label ID="lblChildName" runat ="server" ></asp:Label></td>
</tr>
<tr>
<td>Age</td>
<td align="left" ><asp:Label ID="lblAge" runat ="server" ></asp:Label></td>
</tr>
</table>
</fieldset>
<fieldset id="Fieldset2" runat ="server" >
<table align="left" >

        
               
                
                 <tr>
                    <td align="left" colspan="3" style="font-family: 'trebuchet MS'; background-color: #E3BA15;
                        font-size: small; font-weight: bold;width:450px;">
                        Sponsor Type</td>
                </tr>
                <tr>
                <td align="left" colspan="2" ><asp:TextBox ID="txtSponsorType" runat ="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtSponsorType" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
                </tr>
                
                <tr>
                    <td align="left" colspan="3" style="font-family: 'trebuchet MS'; background-color: #E3BA15;
                        font-size: small; font-weight: bold;width:450px;">
                        Personal Information</td>
                </tr>
                <tr>
                <td>Name</td>
                <td align="left" ><asp:TextBox ID="txtName" runat ="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                <td>Profession</td>
                <td align="left" ><asp:TextBox ID="txtProfession" runat ="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtProfession" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                <td>Email</td>
                <td align="left" ><asp:TextBox ID="txtEmail" runat ="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                <td>PhoneNo</td>
                <td align="left" ><asp:TextBox ID="txtPhoneNo" runat ="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPhoneNo" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
                </tr>
                 <tr>
                <td valign="top">Address</td>
                <td align="left" ><asp:TextBox ID="txtAddress" runat ="server" Height="60px" 
                        TextMode="MultiLine" Width="263px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAddress" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                <td valign="top">Amount</td>
                <td align="left" ><asp:TextBox ID="txtAmount" runat ="server"  ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAmount" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                <td>Check/DD No</td>
                <td align="left" ><asp:TextBox ID="txtCheckNo" runat ="server" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtCheckNo" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
                </tr>
                
                
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

