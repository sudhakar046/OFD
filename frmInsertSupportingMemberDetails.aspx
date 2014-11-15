<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" Theme="Theme1" AutoEventWireup="true" CodeFile="frmInsertSupportingMemberDetails.aspx.cs" Inherits="frmInsertSupportingMemberDetails" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h5>Child Care & Development Foundation
 
</h5>
    <h5>Application Form for Membership of Supporting Member
 
</h5>
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
                        MobileNo
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtMobileNo" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMobileNo"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>                                      
                                                      
                
                <tr>
                    <td align="left">
                        ResidenceNo
                    </td>
                    <td align="left">
                      <asp:TextBox ID="txtResidenceNo" runat ="server" ></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtResidenceNo"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                 <tr>
                    <td align="left">
                        DateOfBirth
                    </td>
                    <td align="left">
                      <asp:TextBox ID="txtDOB" runat ="server" ></asp:TextBox>
                        
                        <cc1:CalendarExtender ID="txtDOB_CalendarExtender" runat="server" 
                            Enabled="True" TargetControlID="txtDOB">
                        </cc1:CalendarExtender>
                        
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
                    <td align="left">
                        Organization
                    </td>
                    <td align="left">
                      <asp:TextBox ID="txtOrganization" runat ="server" ></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtOrganization"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                 <tr>
                    <td align="left" valign="top">
                        Profession
                    </td>
                    <td align="left">
                    <asp:RadioButtonList  ID="ChkProfession" runat="server" RepeatColumns="2" 
                            RepeatDirection="Horizontal" >
                        <asp:ListItem>Business</asp:ListItem>
                        <asp:ListItem>Self-Employed</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>Services</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                
                <tr>
                    <td align="left">
                        Field
                    </td>
                    <td align="left">
                      <asp:TextBox ID="txtField" runat ="server" ></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtField"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                <td align="left" valign="top">
                Designation
                </td>
                <td align="left" >
                  <asp:TextBox ID="txtDesignation" runat ="server" ></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDesignation"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                </tr>
                
</table> 
</fieldset>
<fieldset id="Field3" runat ="server" >
<table align="left" >
<tr><td align="left">I wish to make a financial contribution for the development of Child Welfare for</td></tr>
<tr><td align="left">
    <asp:RadioButtonList ID="ChkRupees" runat ="server" 
        RepeatDirection="Horizontal" RepeatColumns="5" >
    <asp:ListItem>Rs. 100/-</asp:ListItem>
    <asp:ListItem>Rs. 250/-</asp:ListItem>
    <asp:ListItem>Rs. 500/-</asp:ListItem>
    <asp:ListItem>Rs. 1100/-</asp:ListItem>
    <asp:ListItem>Rs. 2100/-</asp:ListItem>
    <asp:ListItem>Rs. 5100/-</asp:ListItem>
    <asp:ListItem>Rs. 11000/-</asp:ListItem>
    </asp:RadioButtonList></td></tr>
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

