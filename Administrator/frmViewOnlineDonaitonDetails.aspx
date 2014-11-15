<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="frmViewOnlineDonaitonDetails.aspx.cs" Inherits="Administrator_frmViewOnlineDonaitonDetails"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3>
        Display Report for Online Donations</h3>
    <center>
        <table>
            <tr>
                <td align="left">
                    <asp:GridView ID="grvDonations" runat="server" AutoGenerateColumns="False" ShowFooter="True"
                        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px"
                        CellPadding="4" Font-Bold="True" Font-Names="Trebuchet MS" 
                        Font-Size="X-Small">
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <Columns>
                            <asp:BoundField DataField="DonationId" HeaderText="DonationId" />
                            <asp:BoundField DataField="SponsorACNo" HeaderText="SopnsorACNo" />
                            <asp:BoundField DataField="BankName" HeaderText="BankName" />
                            <asp:TemplateField HeaderText="Date">
                                <ItemTemplate>
                                    <asp:Label ID="lblDate" runat="server" Text='<%#Eval("DateOfSend") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:Label ID="lblTot" runat="server" Text="TotalAmount:"></asp:Label>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Amount(Rs.)">
                                <ItemTemplate>
                                    <asp:Label ID="lblAmount" runat="server" Text='<%#Eval("Amount") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:Label ID="lblTotal" runat="server" Text='<%#Sum()%>'></asp:Label>
                                </FooterTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
