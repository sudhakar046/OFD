<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true"
    CodeFile="frmDisplayFriends.aspx.cs" Inherits="frmDisplayFriends" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <h3>
            FRIENDS OF OFD</h3>
        <fieldset id="Field1" runat="server">
            <table align="left">
                <tr>
                    <td>
                    </td>
                    <td align="left">
                        <asp:LinkButton ID="lnkPatrons" runat="server" onclick="lnkPatrons_Click">Patrons</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td align="left">
                        <asp:LinkButton ID="lnkHonoraryMembers" runat="server" 
                            onclick="lnkHonoraryMembers_Click">Honorary Members</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td align="left">
                        <asp:LinkButton ID="lnkExecutiveMembers" runat="server" 
                            onclick="lnkExecutiveMembers_Click">Executive Members</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td align="left">
                        <asp:LinkButton ID="lnkActiveMembers" runat="server" 
                            onclick="lnkActiveMembers_Click">Active Members</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td align="left">
                        <asp:LinkButton ID="lnkVoulnteers" runat="server" onclick="lnkVoulnteers_Click">Volunteers</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td align="left">
                        <asp:LinkButton ID="lnkChildSponsors" runat="server" 
                            onclick="lnkChildSponsors_Click">Child Sponsors</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </fieldset>
    </center>
</asp:Content>
