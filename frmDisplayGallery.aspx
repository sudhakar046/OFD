<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true"
    CodeFile="frmDisplayGallery.aspx.cs" Inherits="frmDisplayGallery" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers >
        <asp:AsyncPostBackTrigger ControlID ="grvPrograms" EventName="RowCommand" />
        </Triggers>
        <ContentTemplate>
        <h3>
            PHOTO GALLERY
        </h3>
        
            <fieldset id="Fieldset1" runat="server">
                <table align="left">
                    <tr>
                        <td align="left">
                            <asp:GridView ID="grvPrograms" runat="server" AutoGenerateColumns="false" ShowHeader="false"
                                GridLines="None" onrowcommand="grvPrograms_RowCommand">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <table>
                                                <tr>
                                                    <td align="left">
                                                        <asp:LinkButton ID="lnkProgram" runat="server" Text='<%#Eval("Title") %>' CommandArgument='<%#Eval("ProgramCode") %>'
                                                            Font-Bold="True" ForeColor="#FF0066"></asp:LinkButton>
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
            <fieldset id="Field1" runat="server" visible="false" >
                <table>
                    <tr>
                        <td>
                            <asp:DataList ID="grvGallery" runat="server" AutoGenerateColumns="false" GridLines="None"
                                ShowHeader="false" RepeatColumns="2" RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:Image ID="img1" runat="server" Height="180px" ImageUrl='<%#"GalleryHandler.ashx?id="+ Eval("PhotoId") %>'
                                                    Width="200px" />
                                            </td>
                                        </tr>
                                        <%--<tr>
                                            <td>
                                                <asp:Label ID="lblProgram" runat="server" Text='<%#Eval("ProgramCode") %>'></asp:Label>
                                            </td>
                                        </tr>--%>
                                        <%--<tr>
                                            <td>
                                                <asp:Label ID="lblCount" runat="server" Text='<%#Eval("Count")%>'></asp:Label>
                                            </td>
                                        </tr>--%>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
            </fieldset>
       </ContentTemplate>
        </asp:UpdatePanel>
    </center>
</asp:Content>
