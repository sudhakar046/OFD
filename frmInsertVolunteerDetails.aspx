<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" Theme="Theme1" CodeFile="frmInsertVolunteerDetails.aspx.cs" Inherits="frmInsertVolunteerDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h5>Child Care & Development Foundation
 
</h5>
    <h5>Application Form for Membership of Volunteer</h5>
<fieldset id="Field1" runat ="server" >

<table align="left">
                <tr>
                    <td align="left">
                        MemberName(Mr./Ms./Mrs.)
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtMemberName" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RFVPCode" runat="server" ControlToValidate="txtMemberName" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        EmailId
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmailId" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">
                        Mailing Address
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Height="52px" 
                            Width="241px" ></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                                                      
                                                      
                
                
                
                 <tr>
                    <td align="left">
                        DateOfBirth
                    </td>
                    <td align="left">
                      <asp:TextBox ID="txtDOB" runat ="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDOB"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                  <tr>
                    <td align="left">
                        Nationality
                    </td>
                    <td align="left">
                      <asp:TextBox ID="txtNationality" runat ="server" ></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtNationality"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                
                
                 
                
                 <tr>
                    <td align="left" valign="top">
                        MobileNo
                    </td>
                    <td align="left">
                    <asp:TextBox ID="txtMobileNo" runat ="server" ></asp:TextBox><asp:RequiredFieldValidator ID="RFVMobile"
                    runat="server" ControlToValidate="txtMobileNo" ErrorMessage ="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                <td align="left" valign="top">
                Area Of Interest
                </td>
                <td align="left" >
                <asp:RadioButtonList ID="RBListArea" runat="server" RepeatColumns="2" 
                        RepeatDirection="Horizontal" >
                    <asp:ListItem>Programs</asp:ListItem>
                    <asp:ListItem>Administration</asp:ListItem>
                    <asp:ListItem>Promotion</asp:ListItem>
                    <asp:ListItem>Fund-Raising</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
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

