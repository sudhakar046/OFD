<%@ Page Language="C#" MasterPageFile="~/Members/MemberMasterPage.master" AutoEventWireup="true"
    CodeFile="frmDisplayNewsLetters.aspx.cs" Inherits="frmDisplayNewsLetters" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
            <h3>
            NEWS LETTERS</h3>
      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers>
        <asp:AsyncPostBackTrigger ControlID ="grvMonths" EventName ="RowCommand" />
        </Triggers>
        <ContentTemplate>

        <fieldset id="field1" runat="server">
            <table align="left">
                <tr>
                    <td align="left">
                        <asp:GridView ID="grvMonths" runat="server" AutoGenerateColumns="false" GridLines="None"
                            ShowHeader="false" OnRowCommand="grvMonths_RowCommand">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <table>
                                            <tr>
                                                <td align="left">
                                                    <asp:LinkButton ID="hy1" runat="server" CommandArgument='<%#Eval("NewsLetterId") %>'
                                                        Text='<%# Eval("Month") %>'></asp:LinkButton>
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
        <fieldset id="Field2" runat="server" visible="false">
            <h4>
                ORPHAN DEVELOPMENT FOUNDATION</h4>
            <table align="left">
                <tr>
                    <td align="left">
                        <asp:Label ID="lblIssue" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
                            Font-Size="Small" ForeColor="#00CC00"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="lblMonth" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
                            ForeColor="#00CC00"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="lblStory" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
                            ForeColor="#CC99FF"></asp:Label>
                    </td>
                </tr>
            </table>
        </fieldset>
        </ContentTemplate>
        </asp:UpdatePanel>
    </center>
</asp:Content>
