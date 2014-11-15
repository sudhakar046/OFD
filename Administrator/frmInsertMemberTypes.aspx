<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmInsertMemberTypes.aspx.cs" Inherits="Administrator_frmInsertMemberTypes" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
        <h3>
            Insert Member Types</h3>
        <fieldset id="Field1" runat="server" style="width:450px;">
            <legend>Submit Member Types Information</legend>
            <table align="left">
                <tr>
                    <td align="left" style="width: 126px">
                        Member TypeId
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtMemberTypeId" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RFVPCode" runat="server" ControlToValidate="txtMemberTypeId" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" style="width: 126px">
                        Member TypeName
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtMemberTypeName" runat="server"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMemberTypeName" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                
                <tr>
                    <td align="left" valign="top" style="width: 126px">
                        Description
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Height="103px" 
                            Width="344px" ></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDescription" ErrorMessage="*"></asp:RequiredFieldValidator>
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

