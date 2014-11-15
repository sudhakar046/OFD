<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="frmDisplayGiftDetails.aspx.cs" Inherits="Administrator_frmDisplayGiftDetails"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <h3>
            DISPLAY GIFT DETAILS</h3>
        <fieldset id="Field1" runat="server">
            <table align="left">
                <tr>
                    <td align="left">
                        <asp:GridView ID="grvGifts" runat="server" AutoGenerateColumns="false" GridLines="None"
                            ShowHeader="false" Font-Bold="True" Font-Names="Trebuchet MS" 
                            ForeColor="#FF9900">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <table align="left">
                                            <tr>
                                                <td align="left">
                                                    SenderName:
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="lblSenderName" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                                                </td>
                                                <td>
                                                </td>
                                                <td align="left">
                                                    Gift:
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="lblGiftName" runat="server" Text='<%#Eval("GiftName") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left">
                                                    Profession:
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("Profession") %>'></asp:Label>
                                                </td>
                                                <td>
                                                </td>
                                                <td align="left">
                                                    EmailId:
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("EmailId") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left">
                                                    PhoneNo:
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("Phone") %>'></asp:Label>
                                                </td>
                                                <td>
                                                </td>
                                                <td align="left">
                                                    Address:
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="Label4" runat="server" Text='<%#Eval("Address") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left">
                                                    SendingDate:
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="Label5" runat="server" Text='<%#Eval("SendingDate") %>'></asp:Label>
                                                </td>
                                                <td>
                                                </td>
                                                <td align="left">
                                                    ChildName:
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="Label6" runat="server" Text='<%#Eval("ChildName") %>'></asp:Label>
                                                </td>
                                            </tr>
                                           <tr>
                                                        <td colspan="3">
                                                            <hr style="color:Maroon" />
                                                        </td>
                                        </table>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </fieldset>
    </center>
</asp:Content>
