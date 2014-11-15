<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true"
    CodeFile="frmSponsorChild.aspx.cs" Inherits="frmSponsorChild" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <h4>
            SPONSORED CHILDREN
        </h4>
        <fieldset id="Field1" runat="server">
            <table align="left">
                <tr>
                    <td align="left">
                        <asp:GridView ID="grvChildern" runat="server" AutoGenerateColumns="false" GridLines="None"
                            ShowHeader="false">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <table>
                                            <tr>
                                                <td align="left" colspan="2" style="font-family: 'Trebuchet MS'; font-size: small;
                                                    font-weight: bold">
                                                    Sponsor's Details :-
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" style="font-family: 'Trebuchet MS'; font-size: small;">
                                                    Name:
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblChildName" runat="server" Text='<%#Eval("SponsorName") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" style="font-family: 'Trebuchet MS'; font-size: small;">
                                                    Email Id:
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblEmaiId" runat="server" Text='<%#Eval("EmailId") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" align="left" style="font-family: 'Trebuchet MS'; font-size: small;
                                                    font-weight: bold">
                                                    Child Details :-
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Image ID="img1" runat="server" Height="100px" ImageUrl='<%#"Handler.ashx?id="+ Eval("ChildCode") %>'
                                                        Width="100px" />
                                                </td>
                                                <td>
                                                    <table>
                                                        <tr>
                                                            <td align="left" style="font-family: 'Trebuchet MS'; font-size: small;">
                                                                Name:
                                                            </td>
                                                            <td align="left" colspan="2">
                                                                <asp:Label ID="lblName" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                                                                <asp:Label ID="lblCCode" runat="server" Text='<%#Eval("ChildCode") %>' Visible="false"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" style="font-family: 'Trebuchet MS'; font-size: small;">
                                                                Age:
                                                            </td>
                                                            <td align="left" colspan="2">
                                                                <asp:Label ID="lblAge" runat="server" Text='<%#Eval("Age") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" style="font-family: 'Trebuchet MS'; font-size: small;">
                                                                Class:
                                                            </td>
                                                            <td align="left" colspan="2">
                                                                <asp:Label ID="lblClass" runat="server" Text='<%#Eval("Class") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" style="font-family: 'Trebuchet MS'; font-size: small;">
                                                                YearOfEnroll:
                                                            </td>
                                                            <td align="left" colspan="2">
                                                                <asp:Label ID="lblYear" runat="server" Text='<%#Eval("YearOfEnrollment") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <hr style="color: Maroon" />
                                                </td>
                                            </tr>
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
