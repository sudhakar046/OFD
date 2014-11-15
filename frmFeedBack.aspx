<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" Theme="Theme1" AutoEventWireup="true"
    CodeFile="frmFeedBack.aspx.cs" Inherits="frmFeedBack" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <h3>
            FEED BACK</h3>
        <fieldset id="Field1" runat="server">
            <table align="left">
                <tr>
                    <td align="left">
                        Name
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">
                        Address
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtAddress" TextMode="MultiLine" runat="server" Height="64px" Width="368px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        PhoneNo
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtPhoneNo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        EmailId
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top">
                        Comments
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtComments" TextMode="MultiLine" runat="server" Height="183px"
                            Width="365px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="btnSumit" runat="server" Text="Send" onclick="btnSumit_Click" />
                        <asp:Button ID="btnReset"
                            runat="server" Text="Rest" onclick="btnReset_Click" />
                    </td>
                </tr>
            </table>
        </fieldset>
    </center>
</asp:Content>
