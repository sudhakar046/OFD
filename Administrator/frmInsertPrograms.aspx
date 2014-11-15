<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="frmInsertPrograms.aspx.cs" Theme="Theme1" Inherits="Administrator_frmInsertPrograms"
    Title="Upload Programm Codes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <h3>
            Insert Programm Details</h3>
        <fieldset id="Field1" runat="server" style="width:450px;">
            <legend>Submit Programm Information</legend>
            <table align="left">
                <tr>
                    <td align="left">
                        ProgrammCode
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtProgrammCode" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RFVPCode" runat="server" ControlToValidate="txtProgrammCode" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        Title
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtTile" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTile" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        TargetPopulation
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtTarget" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTarget" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        GeoLocation
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtGeoLocation" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtGeoLocation"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        AgeGroup
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtAgeGroup" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAgeGroup" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">
                        Description
                    </td>
                    <td>
                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Height="84px"
                            Width="311px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                                runat="server" ControlToValidate="txtDescription" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">
                        Objective
                    </td>
                    <td>
                        <asp:TextBox ID="txtObjective" runat="server" TextMode="MultiLine" Height="84px"
                            Width="311px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                                runat="server" ControlToValidate="txtObjective" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">
                        Approach
                    </td>
                    <td>
                        <asp:TextBox ID="txtApproach" runat="server" TextMode="MultiLine" Height="84px" Width="311px"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtApproach" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">
                        Achievements
                    </td>
                    <td>
                        <asp:TextBox ID="txtAchievements" runat="server" TextMode="MultiLine" Height="84px"
                            Width="311px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator8"
                                runat="server" ControlToValidate="txtAchievements" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">
                        Assessment
                    </td>
                    <td>
                        <asp:TextBox ID="txtAssesment" runat="server" TextMode="MultiLine" Height="84px"
                            Width="311px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator9"
                                runat="server" ControlToValidate="txtAssesment" ErrorMessage="*"></asp:RequiredFieldValidator>
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
