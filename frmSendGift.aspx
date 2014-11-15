<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmSendGift.aspx.cs" Inherits="frmSendGift" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h4>SEND A GIFT</h4>
<fieldset id="field1" runat ="server" >
<table align="left" >
<tr>
                    <td align="left" colspan="3" style="font-family: 'trebuchet MS'; background-color: #E3BA15;
                        font-size: small; font-weight: bold;width:450px;">
                        Select the children to Whom you want to send the Gift
                    </td>
                </tr>
                <tr>
                <td align="left" colspan="2" ><asp:DropDownList ID="ddlChildren" runat ="server" ></asp:DropDownList></td>
                </tr>
                <tr>
                    <td align="left" colspan="3" style="font-family: 'trebuchet MS'; background-color: #E3BA15;
                        font-size: small; font-weight: bold;width:450px;">
                        Type Of Gift</td>
                </tr>
                <tr>
                <td align="left" colspan="2" ><asp:TextBox ID="txtTypeOfGift" runat ="server"></asp:TextBox><asp:RequiredFieldValidator ID="RFVGift" runat="server" ControlToValidate="txtTypeOfGift" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
                </tr>
                
                
                 <tr>
                    <td align="left" colspan="3" style="font-family: 'trebuchet MS'; background-color: #E3BA15;
                        font-size: small; font-weight: bold;width:450px;">
                        Sending Date</td>
                </tr>
                <tr>
                <td align="left" colspan="2" ><asp:TextBox ID="txtDate" runat ="server"></asp:TextBox>
                    <cc1:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="txtDate">
                    </cc1:CalendarExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDate" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
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

