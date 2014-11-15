<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true"
    CodeFile="frmNeedSponsorChild.aspx.cs" Inherits="frmNeedSponsorChild" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <Triggers >
    <asp:AsyncPostBackTrigger ControlID="GrvChildern" EventName="RowCommand" /> 
    </Triggers>
        <ContentTemplate>
            <center>
                <h3>
                    Childern Need To Be Sponsored</h3>
                <fieldset id="Field1" runat="server">
                    <table>
                        <tr>
                            <td>
                                <asp:GridView ID="GrvChildern" runat="server" AutoGenerateColumns="false" 
                                    GridLines="None" OnRowCommand="GrvChildern_RowCommand" 
                                    onselectedindexchanged="GrvChildern_SelectedIndexChanged" ShowFooter="false">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <table>
                                                    <tr>
                                                        <td style="font-family: 'trebuchet MS'; font-size: small; font-weight: bold">
                                                            Child&#39;s Details:
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Image ID="img1" runat="server" Height="100px" 
                                                                ImageUrl='<%#"Handler.ashx?id="+ Eval("ChildCode") %>' Width="100px" />
                                                        </td>
                                                        <td>
                                                            <table>
                                                                <tr>
                                                                    <td align="left">
                                                                        Name
                                                                    </td>
                                                                    <td align="left" colspan="2">
                                                                        <asp:Label ID="lblName" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                                                                        <asp:Label ID="lblCCode" runat="server" Text='<%#Eval("ChildCode") %>' 
                                                                            Visible="false"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="left">
                                                                        Age
                                                                    </td>
                                                                    <td align="left" colspan="2">
                                                                        <asp:Label ID="lblAge" runat="server" Text='<%#Eval("Age") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="left">
                                                                        Class
                                                                    </td>
                                                                    <td align="left" colspan="2">
                                                                        <asp:Label ID="lblClass" runat="server" Text='<%#Eval("Class") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="left">
                                                                        YearOfEnroll
                                                                    </td>
                                                                    <td align="left" colspan="2">
                                                                        <asp:Label ID="lblYear" runat="server" Text='<%#Eval("YearOfEnrollment") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:ImageButton ID="ImgDonate" runat="server" 
                                                                            ImageUrl="~/Images/ImgDonate.JPG" PostBackUrl="~/frmDonation.aspx" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:ImageButton ID="ImgSponsor" runat="server" CommandName="Sponsor" CommandArgument='<%#Eval("ChildCode")%>'
                                                                            ImageUrl="~/Images/ImgSponsor.JPG" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:ImageButton ID="ImgGift" runat="server" ImageUrl="~/Images/ImgGift.JPG" 
                                                                            PostBackUrl="~/frmSendGift.aspx" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left">
                                                            <asp:LinkButton ID="lnkVisible" runat="server" 
                                                                CommandArgument='<%#Eval("ChildCode")%>' CommandName="story">StoryBehind</asp:LinkButton>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left" colspan="2">
                                                            <asp:Label ID="lblStory" runat="server" Text='<%#Eval("StoryBehind")%>' 
                                                                Visible="false"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            <hr style="color:Maroon" />
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
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
