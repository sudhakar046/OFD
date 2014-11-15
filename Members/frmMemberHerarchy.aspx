<%@ Page Language="C#" MasterPageFile="~/Members/MemberMasterPage.master" AutoEventWireup="true"
    CodeFile="frmMemberHerarchy.aspx.cs" Inherits="Administrator_frmMemberHerarchy"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="trvMemberTypes" EventName="SelectedNodeChanged" />
            </Triggers>
            <ContentTemplate>
                <h5>
                    TEAM AND LEADERSHIP</h5>
                <fieldset id="Field1" runat="server">
                    <table align="left">
                        <tr>
                            <td align="left">
                                <asp:TreeView ID="trvMemberTypes" runat="server" OnSelectedNodeChanged="trvMemberTypes_SelectedNodeChanged"
                                    ExpandDepth="0" PopulateNodesFromClient="true" ShowLines="true" ShowExpandCollapse="true">
                                </asp:TreeView>
                            </td>
                        </tr>
                    </table>
                </fieldset>
                <fieldset id="Field2" runat="server" visible="false">
                    <legend>Member Information</legend>
                    <table>
                        <tr>
                            <td align="left">
                                <asp:GridView ID="GrvMembers" runat="server" AutoGenerateColumns="false" ShowHeader="false"
                                    GridLines="None">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <table>
                                                    <tr>
                                                        <td align="left">
                                                            Member Information
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Image ID="img1" runat="server" Height="100px" ImageUrl='<%#"Handler.ashx?id="+ Eval("MemberId") %>'
                                                                Width="100px" />
                                                        </td>
                                                       
                                                            <td>
                                                                <table>
                                                                    <tr>
                                                                        <td align="left" style="font-family: 'Trebuchet MS'; font-size: small;">
                                                                            MemberId:
                                                                        </td>
                                                                        <td align="left" colspan="2">
                                                                            <asp:Label ID="lblId" runat="server" Text='<%#Eval("MemberId") %>'></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" style="font-family: 'Trebuchet MS'; font-size: small;">
                                                                            Name:
                                                                        </td>
                                                                        <td align="left" colspan="2">
                                                                            <asp:Label ID="lblName" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" style="font-family: 'Trebuchet MS'; font-size: small;">
                                                                            EmailId:
                                                                        </td>
                                                                        <td align="left" colspan="2">
                                                                            <asp:Label ID="lblEmail" runat="server" Text='<%#Eval("EmailId") %>'></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="left" style="font-family: 'Trebuchet MS'; font-size: small;">
                                                                            MobileNo:
                                                                        </td>
                                                                        <td align="left" colspan="2">
                                                                            <asp:Label ID="lblMobile" runat="server" Text='<%#Eval("MobileNo") %>'></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                        <td align="left" >Address</td>
                                                        <td colspan="2"><asp:Label ID="lblAddress" runat ="server" Text='<%#Eval("Address") %>' ></asp:Label></td>
                                                        </tr>
                                                                </table>
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
            </ContentTemplate>
        </asp:UpdatePanel>
    </center>
</asp:Content>
