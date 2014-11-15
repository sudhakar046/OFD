<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true"
    CodeFile="frmDisplayMembersDetails.aspx.cs" Inherits="Administrator_frmDisplayMembersDetails"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers>
        <asp:AsyncPostBackTrigger ControlID="lnkActiveMembers" EventName="Click" />
        <asp:AsyncPostBackTrigger ControlID="LinkButton1" EventName="Click" />
        <asp:AsyncPostBackTrigger ControlID ="LinkButton2" EventName="Click" />
        <asp:AsyncPostBackTrigger ControlID ="grvMembers" EventName="RowCommand" />
        </Triggers>
            <ContentTemplate>
                <h4>
                    Registered Member Information</h4>
                <fieldset id="Field1" runat="server">
                    <table>
                        <tr>
                            <td align="left">
                                <asp:LinkButton ID="lnkActiveMembers" runat="server" OnClick="lnkActiveMembers_Click">*Active Member Details</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">*Supporting Member Details</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">*Volunteer Details</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </fieldset>
                <fieldset id="Field2" runat="server" visible="false">
                    <table align="left">
                        <tr>
                            <td align="left">
                                <asp:GridView ID="grvMembers" runat="server" AutoGenerateColumns="false" ShowHeader="false"
                                    GridLines="None" OnRowCommand="grvMembers_RowCommand">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <table>
                                                    <tr>
                                                        <td align="left">
                                                            <asp:LinkButton ID="lnkMemberName" CommandArgument='<%#Eval("MemberId") %>' runat="server"
                                                                Text='<%#Eval("Name") %>' Font-Bold="True" ForeColor="Red" ToolTip="Click MemberName"></asp:LinkButton>
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
                <fieldset id="Field3" runat="server" visible="false">
                    <table align="left">
                        <tr>
                            <td align="left">
                                <asp:DetailsView ID="DVMembers" runat="server" BackColor="#E39115" Font-Bold="True"
                                    Font-Names="Trebuchet MS" Font-Size="Small">
                                </asp:DetailsView>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </ContentTemplate>
        </asp:UpdatePanel>
    </center>
</asp:Content>
