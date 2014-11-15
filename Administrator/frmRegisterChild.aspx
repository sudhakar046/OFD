<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmRegisterChild.aspx.cs" Inherits="Administrator_frmRegisterChild" Title="Untitled Page" %>

<%@ Register src="../UserControls/BrowseImage.ascx" tagname="BrowseImage" tagprefix="uc1" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <h3>
            Child Registration Form</h3>
        <fieldset id="Field1" runat="server" style="width:450px;">
            <legend>Submit Child Information</legend>
            <table align="left">
                <tr>
                    <td align="left">
                        ChildName
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtChildName" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RFVPCode" runat="server" ControlToValidate="txtChildName" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        DOB
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtDateOfBirth" runat="server"></asp:TextBox>
                        <cc1:CalendarExtender ID="txtDateOfBirth_CalendarExtender" runat="server" 
                            Enabled="True" TargetControlID="txtDateOfBirth">
                        </cc1:CalendarExtender>
                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDateOfBirth" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        YearOfEnroll
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtYearOfEnroll" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtYearOfEnroll" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Class
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtClass" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtClass"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">
                        StoryBehind
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtStory" runat="server" TextMode="MultiLine" Height="103px" 
                            Width="344px" ></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtStory" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                              
                
                
                
            </table>
        </fieldset>
        <fieldset id="Field3" runat ="server" >
        <legend>Upload Child Image</legend>
        <table align="left" >
        <tr>
        <td>
            <uc1:BrowseImage ID="BrowseImage1" runat="server" />
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

