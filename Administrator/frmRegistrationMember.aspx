<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmRegistrationMember.aspx.cs" Inherits="Administrator_frmRegistrationMember" Title="Untitled Page" %>

<%@ Register src="../UserControls/BrowseImage.ascx" tagname="BrowseImage" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
        <h3>
            Member Registration Form</h3>
        <fieldset id="Field1" runat="server" style="width:450px;">
            <legend>Submit Member Information</legend>
            <table align="left">
                <tr>
                    <td align="left">
                        MemberName
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
                    <td align="left">
                        Address
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox><asp:RequiredFieldValidator
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
                        Member Type
                    </td>
                    <td align="left">
                        <asp:DropDownList ID="ddlMemberType" runat ="server" ></asp:DropDownList><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlMemberType"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>                                      
                
                
                
            </table>
        </fieldset>
        <fieldset id="Field3" runat ="server" >
        <legend>Upload Member Image</legend>
        <table align="left" >
        <tr>
        <td>
            <uc1:BrowseImage ID="BrowseImage1" runat="server" />
            </td>
        </tr>
        </table>
        </fieldset>
        <fieldset id="Field4" runat ="server" >
        <legend>Login Information</legend>
        <table align="left" >
        <tr>
                    <td align="left">
                        UserName
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtUserName" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr>
                    <td align="left">
                        Password
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="8"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
        </table>
        </fieldset>
        <fieldset id="Field2" runat="server">
            <table>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="btnSubmit" runat="server" Text="Insert" 
                            onclick="btnSubmit_Click" /><asp:Button ID="btnClear"
                            runat="server" Text="Clear" CausesValidation="false" 
                            onclick="btnClear_Click" />
                    </td>
                </tr>
                <tr><td><asp:Label ID="lblMsg" runat ="server" Visible="false" ></asp:Label></td></tr>
            </table>
        </fieldset>
    </center>
</asp:Content>

