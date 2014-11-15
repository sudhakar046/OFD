<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" Theme="Theme1" 
    CodeFile="frmProgrammDonate.aspx.cs" Inherits="frmProgrammDonate" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <h3>
            Donation</h3>
        <fieldset id="field1" runat="server">
            <table align="left" style="width: 431px">
                <tr>
                    <td align="left" colspan="3" style="font-family: 'trebuchet MS'; background-color: #E3BA15;
                        font-size: small; font-weight: bold;width:325px;">
                        Select the program to sponsor
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:RadioButtonList ID="RBListPrograms" runat="server">
                        </asp:RadioButtonList>
                    </td>
                </tr>
                </table>
                </fieldset>
                <fieldset id="Field2" runat ="server" >
                <table >
                <tr>
                    <td align="left" colspan="3" style="font-family: 'trebuchet MS'; background-color: #E3BA15;
                        font-size: small; font-weight: bold;">
                        Amount For Donation
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Amount
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RFVAmount" runat="server" ControlToValidate="txtAmount" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" colspan="3" style="font-family: 'trebuchet MS'; background-color: #E3BA15;
                        font-size: small; font-weight: bold;">
                        Check and Demand Draft
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Check/DD No
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtCheckNo" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCheckNo" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        BankName
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtBankName" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBankName" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Place
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtPlace" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPlace" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" colspan="3" style="font-family: 'trebuchet MS'; background-color: #E3BA15;
                        font-size: small; font-weight: bold;">
                        Personal Information
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Name
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtName" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Profession
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtProfession" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtProfession"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Email
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Phone
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPhone" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">
                        Address
                    </td>
                    <td align="left" valign="top">
                        <asp:TextBox ID="txtAddress" TextMode="MultiLine" runat="server" Height="81px" Width="324px"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAddress" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                            onclick="btnSubmit_Click" /><asp:Button ID="btnReset"
                            runat="server" Text="Reset" CausesValidation="false" 
                            onclick="btnReset_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                    </td>
                </tr>
            </table>
        </fieldset>
    </center>
</asp:Content>
