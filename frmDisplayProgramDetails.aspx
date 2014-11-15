<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true"
    CodeFile="frmDisplayProgramDetails.aspx.cs" Inherits="frmDisplayProgramDetails"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <h3>
            <asp:Label ID="lblTitle" runat="server"></asp:Label></h3>
        <fieldset id="Field1" runat="server">
            <table align="left">
                <tr>
                    <td style="width: 300px">
                        <asp:Label ID="lblTitle1" runat="server"></asp:Label>
                    </td>
                    <td align="right">
                        <asp:ImageButton ID="imgDonation" runat="server" ImageUrl="~/Images/ImgButton.JPG"
                            PostBackUrl="~/frmSponsors.aspx" />
                    </td>
                </tr>
            </table>
        </fieldset>
        <fieldset id="Field2" runat="server">
            <table>
                <tr>
                    <td align="left">
                        <b>Description </b>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="lblDescription" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                <td>
                <br />
                </td>
                </tr>
                <tr>
                    <td align="left">
                        <b>TargetPoulation:</b>
                        <asp:Label ID="lblTargetPopulation" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <b>GeographicalLocation:</b>
                        <asp:Label ID="lblGeo" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <b>AgeGroup: </b>
                        <asp:Label ID="lblAgeGroup" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                <td>
                <br />
                </td>
                </tr>
                <tr>
                    <td align="left">
                        <b>Objectives </b>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="lblObjective" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                <td>
                <br />
                </td>
                </tr>
                <tr>
                    <td align="left">
                        <b>Approach & Strategy </b>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="lblStrategy" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                <td>
                <br />
                </td>
                </tr>
                <tr>
                    <td align="left">
                        <b>Achievements </b>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="lblAchievements" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                <td>
                <br />
                </td>
                </tr>
                <tr>
                    <td align="left">
                        <b>Assesment </b>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="lblAssesment" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </fieldset>
    </center>
</asp:Content>
